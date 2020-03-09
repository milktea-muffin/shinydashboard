##----------------------------------------------------------------------------##
## bio_lollipop
##----------------------------------------------------------------------------##
# from CSV or TSV
#---------------------------
mutation.csv <- system.file("extdata", "ccle.csv", package = "g3viz")
mutation.dat <- readMAF(mutation.csv,
                        gene.symbol.col = "Hugo_Symbol",
                        variant.class.col = "Variant_Classification",
                        protein.change.col = "amino_acid_change",
                        sep = ",")  # column-separator of csv file

chart.options  <- reactive({
  g3Lollipop.theme(
    theme.name = input[["bio_lollipop_theme"]],
    title.text = paste("theme = ", as.character(input[["bio_lollipop_theme"]]), sep=""),
    y.axis.label = "# of mutations",
    legend.title = "Mutation_Class")
})

output[["bio_lollipop_from_csv"]] <- renderG3Lollipop({
  g3Lollipop(mutation.dat,
             gene.symbol = "TP53",
             protein.change.col = "amino_acid_change",
             # btn.style = "blue", # blue-style chart download buttons
             plot.options = chart.options(),
             output.filename = "customized_plot")
})

#---------------------------
# from cBio Portal
#---------------------------
# Connect to CGDS (cancer Genomics Data Server)
cgds <- cgdsr::CGDS("http://www.cbioportal.org/")

# Test if connection is OK
# cgdsr::test(cgds)

# To list all studies
all.studies <- cgdsr::getCancerStudies(cgds)

updateSelectInput(
  session,
  inputId = "bio_lollipop_study_id",
  choices = as.list(all.studies$cancer_study_id)
)

output[["bio_lollipop_study_text"]] <- renderUI({
  tagList(
    p(tags$b("name")),
    p(all.studies$name[all.studies$cancer_study_id == input[["bio_lollipop_study_id"]]]),
    p(tags$b("description")),
    p(all.studies$description[all.studies$cancer_study_id == input[["bio_lollipop_study_id"]]])
  )
})

# Pick up a cancer study with mutation data
cbioportal.mutation.dat <- reactive({
  req(input[["bio_lollipop_study_id"]])
  getMutationsFromCbioportal(input[["bio_lollipop_study_id"]], "TP53")
})

output[["bio_lollipop_from_cbioportal"]] <- renderG3Lollipop({
  g3Lollipop(cbioportal.mutation.dat(),
             gene.symbol = "TP53",
             btn.style = "gray", # gray-style chart download buttons
             plot.options = chart.options(),
             output.filename = "cbioportal_theme")
  #> Factor is set to Mutation_Class
  #> legend title is set to Mutation_Class  
})

# The following code chunk will render the document
rmarkdown::render('code/main.Rmd', encoding = 'UTF-8', output_dir = "docs")

# The following code chunk will update the exiting document on Google Drive
id <- "create a document on Google Drive and paste its unique ID here"
googledrive::drive_update(file = googledrive::as_id(id), media = "docs/main.docx")

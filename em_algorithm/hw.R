path <- .path_to_file("advdatasci-swirl", "em_algorithm", "hw.html")

tf <- tempfile()
dir.create(tf)
htmlFile <- file.path(tf, "index.html")
suppressWarnings(rmarkdown::render(path, output_format = "html_document", output_file = htmlFile))
rstudioapi::viewer(htmlFile)
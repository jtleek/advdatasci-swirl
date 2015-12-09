filename ="bt.html"
swirlfile <- .path_to_file("advdatasci-swirl", "em_algorithm/html", filename)
tf <- tempfile()
dir.create(tf)
htmlfile = file.path(tf,filename)
file.copy(swirlfile,htmlfile)
if(rstudioapi::isAvailable()){
  rstudioapi::viewer(htmlfile)
}else{
  browseURL(htmlfile)
}
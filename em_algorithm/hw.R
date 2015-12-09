htmlfile <- .path_to_file("advdatasci-swirl", "em_algorithm/html", "hw.html")
if(rstudioapi::isAvailable()){
  rstudioapi::viewer(htmlfile)
}else{
  browseURL(htmlfile)
}
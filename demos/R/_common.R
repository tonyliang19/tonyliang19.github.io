# common setup script for R docs

# knitr options for chunk exectuions
knitr::opts_chunk$set(
    echo = TRUE, 
    eval=TRUE, 
    include=TRUE,
    message=TRUE,
    warning=FALSE
)

# latex related
options(
  tinytex.engine = "xelatex",
  tikzDefaultEngine = "xetex",
  tikzDocumentDeclaration = "\\documentclass[tikz]{standalone}\n",
  tikzXelatexPackages = c(
    "\\usepackage[fontset=fandol]{ctex}",
    "\\usepackage{amsfonts,mathrsfs,amssymb}\n"
  )
)
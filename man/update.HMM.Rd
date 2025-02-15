% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/update.R
\name{update.HMM}
\alias{update.HMM}
\title{Update a model to a new model by changing one formula}
\usage{
update.HMM(mod, type, i, j, change, fit = TRUE)
}
\arguments{
\item{mod}{a HMM model object}

\item{type}{character string for the part of the model that is updated
(either "hidden" or "obs")}

\item{i}{if type="hidden" then i is the row of the structure containing the change
if type="obs" then i is the observation variable name}

\item{j}{if type="hidden" then j is the column of the structure containing the change
if type="obs" then j is the parameter whose formula is to be changed}

\item{change}{the change to make to the formula, see ?update.formula for details}

\item{fit}{if FALSE then change is made but model is not re-fit}
}
\description{
Update a model to a new model by changing one formula
}

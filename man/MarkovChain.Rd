% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/markovchain.R
\name{MarkovChain}
\alias{MarkovChain}
\title{R6 class for HMM hidden process model}
\description{
R6 class for HMM hidden process model

R6 class for HMM hidden process model
}
\details{
Contains the parameters and model formulas for the hidden process model.
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{MarkovChain$new()}}
\item \href{#method-structure}{\code{MarkovChain$structure()}}
\item \href{#method-formulas}{\code{MarkovChain$formulas()}}
\item \href{#method-tpm}{\code{MarkovChain$tpm()}}
\item \href{#method-coeff_fe}{\code{MarkovChain$coeff_fe()}}
\item \href{#method-delta}{\code{MarkovChain$delta()}}
\item \href{#method-stationary}{\code{MarkovChain$stationary()}}
\item \href{#method-coeff_re}{\code{MarkovChain$coeff_re()}}
\item \href{#method-X_fe}{\code{MarkovChain$X_fe()}}
\item \href{#method-X_re}{\code{MarkovChain$X_re()}}
\item \href{#method-lambda}{\code{MarkovChain$lambda()}}
\item \href{#method-vcomp}{\code{MarkovChain$vcomp()}}
\item \href{#method-nstates}{\code{MarkovChain$nstates()}}
\item \href{#method-terms}{\code{MarkovChain$terms()}}
\item \href{#method-update_tpm}{\code{MarkovChain$update_tpm()}}
\item \href{#method-update_coeff_fe}{\code{MarkovChain$update_coeff_fe()}}
\item \href{#method-update_coeff_re}{\code{MarkovChain$update_coeff_re()}}
\item \href{#method-update_X_fe}{\code{MarkovChain$update_X_fe()}}
\item \href{#method-update_X_re}{\code{MarkovChain$update_X_re()}}
\item \href{#method-update_delta}{\code{MarkovChain$update_delta()}}
\item \href{#method-update_lambda}{\code{MarkovChain$update_lambda()}}
\item \href{#method-make_mat}{\code{MarkovChain$make_mat()}}
\item \href{#method-make_mat_grid}{\code{MarkovChain$make_mat_grid()}}
\item \href{#method-tpm2par}{\code{MarkovChain$tpm2par()}}
\item \href{#method-par2tpm}{\code{MarkovChain$par2tpm()}}
\item \href{#method-linpred}{\code{MarkovChain$linpred()}}
\item \href{#method-simulate}{\code{MarkovChain$simulate()}}
\item \href{#method-formulation}{\code{MarkovChain$formulation()}}
\item \href{#method-print}{\code{MarkovChain$print()}}
\item \href{#method-clone}{\code{MarkovChain$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Create new MarkovChain object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$new(
  data,
  structure = NULL,
  n_states = NULL,
  tpm = NULL,
  stationary = FALSE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{Data frame, needed to create model matrices}

\item{\code{structure}}{Either (1) matrix with an entry of "." on diagonal, a "0" for 
transitions that are not allowed (not implemented yet), and a formula "~1" 
for covariates affecting transitions that are to be estimated, or (2) single
formula, assumed for all transition probabilities. (Default: no covariate
dependence.)}

\item{\code{n_states}}{Number of states. If not specified, then \code{structure} 
needs to be provided as a matrix, and n_states is deduced from its dimensions.}

\item{\code{tpm}}{Optional transition probability matrix, to initialise the model
parameters (intercepts in model with covariates). If not provided, the default 
is a matrix with 0.9 on the diagonal.}

\item{\code{stationary}}{if TRUE then stationary distribution with respect to tpm for 
first time point is used as initial distribution, if FALSE then initial distribution
is estimated}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new MarkovChain object
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-structure"></a>}}
\if{latex}{\out{\hypertarget{method-structure}{}}}
\subsection{Method \code{structure()}}{
Structure of MarkovChain model
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$structure()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-formulas"></a>}}
\if{latex}{\out{\hypertarget{method-formulas}{}}}
\subsection{Method \code{formulas()}}{
List of formulas for MarkovChain model
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$formulas()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-tpm"></a>}}
\if{latex}{\out{\hypertarget{method-tpm}{}}}
\subsection{Method \code{tpm()}}{
Get transition probability matrices
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$tpm(t = 1, linpred = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{t}}{time point, default 1; if t = "all" then 
all tpms are returned otherwise tpms for time points in t are returned}

\item{\code{linpred}}{custom linear predictor}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Array with one slice for each transition probability matrix
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-coeff_fe"></a>}}
\if{latex}{\out{\hypertarget{method-coeff_fe}{}}}
\subsection{Method \code{coeff_fe()}}{
Current parameter estimates (fixed effects)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$coeff_fe()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-delta"></a>}}
\if{latex}{\out{\hypertarget{method-delta}{}}}
\subsection{Method \code{delta()}}{
Stationary distributions
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$delta(t = 1, linpred = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{t}}{time point, default is 1; if t = "all" then 
all deltas are returned otherwise deltas for time points in t are returned}

\item{\code{linpred}}{custom linear predictor}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Matrix of stationary distributions. Each row corresponds to
a row of the design matrices, and each column corresponds to a state.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-stationary"></a>}}
\if{latex}{\out{\hypertarget{method-stationary}{}}}
\subsection{Method \code{stationary()}}{
Use stationary distribution as initial distribution?
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$stationary()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-coeff_re"></a>}}
\if{latex}{\out{\hypertarget{method-coeff_re}{}}}
\subsection{Method \code{coeff_re()}}{
Current parameter estimates (random effects)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$coeff_re()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-X_fe"></a>}}
\if{latex}{\out{\hypertarget{method-X_fe}{}}}
\subsection{Method \code{X_fe()}}{
Fixed effect design matrix
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$X_fe()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-X_re"></a>}}
\if{latex}{\out{\hypertarget{method-X_re}{}}}
\subsection{Method \code{X_re()}}{
Random effect design matrix
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$X_re()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-lambda"></a>}}
\if{latex}{\out{\hypertarget{method-lambda}{}}}
\subsection{Method \code{lambda()}}{
Smoothness parameters
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$lambda()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-vcomp"></a>}}
\if{latex}{\out{\hypertarget{method-vcomp}{}}}
\subsection{Method \code{vcomp()}}{
Variance components of smooth terms

This function transforms the smoothness parameter of
each smooth term into a standard deviation, given by 
SD = 1/sqrt(lambda). It is particularly helpful to get the
standard deviations of independent normal random effects.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$vcomp()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-nstates"></a>}}
\if{latex}{\out{\hypertarget{method-nstates}{}}}
\subsection{Method \code{nstates()}}{
Number of states
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$nstates()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-terms"></a>}}
\if{latex}{\out{\hypertarget{method-terms}{}}}
\subsection{Method \code{terms()}}{
Terms of model formulas
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$terms()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update_tpm"></a>}}
\if{latex}{\out{\hypertarget{method-update_tpm}{}}}
\subsection{Method \code{update_tpm()}}{
Update transition probability matrix
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$update_tpm(tpm)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{tpm}}{New transition probability matrix}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update_coeff_fe"></a>}}
\if{latex}{\out{\hypertarget{method-update_coeff_fe}{}}}
\subsection{Method \code{update_coeff_fe()}}{
Update coefficients for fixed effect parameters
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$update_coeff_fe(coeff_fe)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{coeff_fe}}{Vector of coefficients for fixed effect parameters}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update_coeff_re"></a>}}
\if{latex}{\out{\hypertarget{method-update_coeff_re}{}}}
\subsection{Method \code{update_coeff_re()}}{
Update coefficients for random effect parameters
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$update_coeff_re(coeff_re)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{coeff_re}}{Vector of coefficients for random effect parameters}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update_X_fe"></a>}}
\if{latex}{\out{\hypertarget{method-update_X_fe}{}}}
\subsection{Method \code{update_X_fe()}}{
Update design matrix for fixed effects
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$update_X_fe(X_fe)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{X_fe}}{new design matrix for fixed effects}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update_X_re"></a>}}
\if{latex}{\out{\hypertarget{method-update_X_re}{}}}
\subsection{Method \code{update_X_re()}}{
Update design matrix for random effects
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$update_X_re(X_re)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{X_re}}{new design matrix for random effects}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update_delta"></a>}}
\if{latex}{\out{\hypertarget{method-update_delta}{}}}
\subsection{Method \code{update_delta()}}{
Update delta coefficients
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$update_delta(delta)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{delta}}{Vector of delta coefficients}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update_lambda"></a>}}
\if{latex}{\out{\hypertarget{method-update_lambda}{}}}
\subsection{Method \code{update_lambda()}}{
Update smoothness parameters
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$update_lambda(lambda)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{lambda}}{New smoothness parameter vector}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-make_mat"></a>}}
\if{latex}{\out{\hypertarget{method-make_mat}{}}}
\subsection{Method \code{make_mat()}}{
Make model matrices
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$make_mat(data, new_data = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{Data frame containing all needed covariates}

\item{\code{new_data}}{Optional new data set, including covariates for which
the design matrices should be created. This needs to be passed in addition
to the argument '\code{data}', for cases where smooth terms or factor
covariates are included, and the original data set is needed to determine
the full range of covariate values.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A list with elements:
\itemize{
  \item{X_fe}{Design matrix for fixed effects}
  \item{X_re}{Design matrix for random effects}
  \item{S}{Smoothness matrix for random effects}
  \item{ncol_fe}{Number of columns of X_fe for each parameter}
  \item{ncol_re}{Number of columns of X_re and S for each random effect}
}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-make_mat_grid"></a>}}
\if{latex}{\out{\hypertarget{method-make_mat_grid}{}}}
\subsection{Method \code{make_mat_grid()}}{
Design matrices for grid of covariates

Used in plotting functions such as HMM$plot_tpm and HMM$plot_stat_dist
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$make_mat_grid(var, data, covs = NULL, n_grid = 1000)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{var}}{Name of variable}

\item{\code{data}}{Data frame containing the covariates}

\item{\code{covs}}{Optional named list for values of covariates (other than 'var') 
that should be used in the plot (or dataframe with single row). If this is
not specified, the mean value is used for numeric variables, and the
first level for factor variables.}

\item{\code{n_grid}}{Grid size (number of points). Default: 1000.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A list with the same elements as the output of make_mat, 
plus a data frame of covariates values.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-tpm2par"></a>}}
\if{latex}{\out{\hypertarget{method-tpm2par}{}}}
\subsection{Method \code{tpm2par()}}{
Transform transition probabilities to working scale

Apply the multinomial logit link function to get the corresponding parameters on the
working scale (i.e., linear predictor scale).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$tpm2par(tpm)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{tpm}}{Transition probability matrix}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Vector of parameters on linear predictor scale
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-par2tpm"></a>}}
\if{latex}{\out{\hypertarget{method-par2tpm}{}}}
\subsection{Method \code{par2tpm()}}{
Transform working parameters to transition probabilities

Apply the inverse multinomial logit link function to transform the parameters on
the working scale (i.e., linear predictor scale) into the transition
probabilities.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$par2tpm(par)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{par}}{Vector of parameters on working scale}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Transition probability matrix
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-linpred"></a>}}
\if{latex}{\out{\hypertarget{method-linpred}{}}}
\subsection{Method \code{linpred()}}{
Linear predictor for transition probabilities
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$linpred()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-simulate"></a>}}
\if{latex}{\out{\hypertarget{method-simulate}{}}}
\subsection{Method \code{simulate()}}{
Simulate from Markov chain
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$simulate(n, data = NULL, new_data = NULL, silent = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{n}}{Number of time steps to simulate}

\item{\code{data}}{Optional data frame containing all needed covariates}

\item{\code{new_data}}{Optional new data set, including covariates for which
the design matrices should be created. This needs to be passed in addition
to the argument '\code{data}', for cases where smooth terms or factor
covariates are included, and the original data set is needed to determine
the full range of covariate values.}

\item{\code{silent}}{if TRUE then no messages are printed}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Sequence of states of simulated chain
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-formulation"></a>}}
\if{latex}{\out{\hypertarget{method-formulation}{}}}
\subsection{Method \code{formulation()}}{
Print model formulation
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$formulation()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\if{latex}{\out{\hypertarget{method-print}{}}}
\subsection{Method \code{print()}}{
Print MarkovChain object
Check constructor arguments ##
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MarkovChain$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}

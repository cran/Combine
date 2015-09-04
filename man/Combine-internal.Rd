\name{internals}
\alias{internals}

\alias{combination.prob-class}
\alias{est.combi-class}

\alias{plot_probs.to.combine-class}
\alias{probs.to.combine-class}
\alias{Numeric-class}
\alias{[,Matrix,ANY,ANY-method}
\alias{[,Matrix,ANY,missing-method}
\alias{[,Matrix,missing,ANY-method}
\alias{[<-,Matrix,ANY,missing-method}
\alias{[,Numeric,ANY,missing-method}
\alias{[<-,Numeric,ANY,missing-method}
\alias{coerce,Numeric,numeric-method}
\alias{coerce,combination.prob,Numeric-method}
\alias{coerce<-,Numeric,numeric-method}
\alias{coerce<-,combination.prob,Numeric-method}


\alias{coerce-methods}
\alias{coerce,combination.prob,list-method}
\alias{coerce,combination.prob,numeric-method}
\alias{coerce,list,combination.prob-method}
\alias{coerce,list,plot_probs.to.combine-method}
\alias{coerce,list,probs.to.combine-method}
\alias{coerce,plot_probs.to.combine,list-method}
\alias{coerce,plot_probs.to.combine,probs.to.combine-method}
\alias{coerce,probs.to.combine,list-method}
\alias{coerce<--methods}
\alias{coerce<-,combination.prob,numeric-method}
\alias{coerce<-,probs.to.combine,list-method}
 
\alias{[,combination.prob,ANY,missing-method}
\alias{names,combination.prob-method}
\alias{names<-,combination.prob,character-method}
\alias{plot,probs.to.combine,combination.prob-method}



\alias{names-methods}
\alias{names,plot_probs.to.combine-method}
\alias{names,probs.to.combine-method}
\alias{names<--methods}

\alias{plot-methods}
\alias{plot,ANY,ANY-method}

\alias{plot,numeric,probs.to.combine-method}
\alias{plot,plot_probs.to.combine,missing-method}
\alias{plot,probs.to.combine,missing-method}
\alias{plot,probs.to.combine,numeric-method}
\alias{[,plot_probs.to.combine,ANY,NULL-method}
\alias{[,plot_probs.to.combine,ANY,missing-method}
\alias{[,probs.to.combine,ANY,NULL-method}
\alias{[,probs.to.combine,ANY,missing-method}

\alias{[-methods}
\alias{[<--methods}

\alias{combine.prob}
\alias{divergence.Bernoulli}

\alias{ncombination.prob}
\alias{new_combination.prob}
\alias{new_est.combi}
\alias{new_plot_probs.to.combine}
\alias{new_probs.to.combine}
\alias{nplot_probs.to.combine}
\alias{nprobs.to.combine}
\alias{plot}

%\alias{nNumeric-methods}
%\alias{nNumeric,numeric-method}
%\alias{print_stats}
%\alias{stats}
%\alias{hsm}
%\alias{nNumeric}
%print_stats(object, name, ...)
%stats(object, ...)
%hsm(x, na.rm)
%nNumeric(object,...)


\title{Internal Functions and Methods}
\description{
These functions are for internal use and/or for upcoming packages or not yet documented.
}
\usage{

combine.prob(x, y, tolerance = 0.005,
	 independent = TRUE, ...)
divergence.Bernoulli(P1, P2, base = exp(1),
	 nsample = numeric(0), independent = !is_nothing(nsample), na.rm = logical(0),
	 verbose = FALSE)



ncombination.prob(object,
	 lower.plausible = 0, upper.plausible = 1, method.name = character(0),
	 nsample = numeric(0), independent = !is_nothing(nsample),
	 tolerance = 0.005, verbose = FALSE, arithmetic = TRUE, call.browser = FALSE,
	 loss.type = "information", ...)
new_combination.prob(object, weight)
new_est.combi(x = NULL,
	 probs, independent = F, method = character(0), info = list())
	new_plot_probs.to.combine(object, comb.prob)
new_probs.to.combine(object,
	 method.name = character(0))
nplot_probs.to.combine(object,
	 method.name = character(0), lty = 2:length(object), legend.x = "bottomright",
	 type = "l", col = 2:length(object), lwd = if (type == "l")
	 4 else 1, comb.prob = numeric(0), comb.lty = 1, comb.col = 1,
	 verbose = FALSE, ...)
nprobs.to.combine(object, method.name = character(0))
	nrbind(x, y = NULL, inter = FALSE)


}
\keyword{internal}


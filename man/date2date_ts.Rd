% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conversion.R
\name{date2date_ts}
\alias{date2date_ts}
\title{Conversion d'une date au format TS}
\usage{
date2date_ts(date, frequency_ts = 12L)
}
\arguments{
\item{date}{un objet de type Date}

\item{frequency_ts}{un entier qui vaut \code{4L} (ou \code{4.0}) pour les séries
trimestrielles et \code{12L} (ou \code{12.0}) pour les séries mensuelles.}
}
\value{
En sortie, la fonction retourne la date au format \code{date_ts}
(\code{c(AAAA, MM)} ou \code{c(AAAA, TT)}) avec le mois ou trimestre en cours selon
l'argument \code{frequency_ts}.
}
\description{
La fonction \code{date2date_ts} prend en argument une date au format
date (integer avec une class Date) et la convertit au format \code{date_ts} :
\code{c(AAAA, MM)} ou \code{c(AAAA, TT)} avec le mois ou trimestre en cours.
}
\examples{

date2date_ts(as.Date("2000-01-01"))
date2date_ts(as.Date("2000-01-01"), frequency_ts = 12L)

date2date_ts(as.Date("2021-10-01"), frequency_ts = 12L)
date2date_ts(as.Date("2021-10-01"), frequency_ts = 4L)

}

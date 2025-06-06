% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modify.R
\name{extend_ts}
\alias{extend_ts}
\title{Ajoute de nouvelles valeurs à un ts}
\usage{
extend_ts(series, replacement, date_ts = NULL, replace_na = TRUE)
}
\arguments{
\item{series}{un objet ts unidimensionnel conforme aux règles de assert_ts}

\item{replacement}{un vecteur de même type que le ts \code{series}}

\item{date_ts}{un vecteur numérique, de préférence \code{integer}, au format
\code{AAAA}, \code{c(AAAA, MM)} ou \code{c(AAAA, TT)}}

\item{replace_na}{un booléen}
}
\value{
En sortie, la fonction retourne une copie de l'objet \code{series}
complété avec le vecteur \code{replacement}.
}
\description{
La fonction \code{extend_ts} ajoute de nouvelles valeurs à un ts.
}
\details{
\code{date_ts} désigne la date jusqu'à laquelle le remplacement s'effectue.
Par défault, cette valeur vaut \code{NULL}.

Si \code{replace_na} vaut \code{TRUE} alors le remplacement commence dès que
l'objet ne contient que des NA. Dans le cas contraire, le ts est étendu,
qu'il contienne des NA ou non à la fin.
Si le vecteur \code{replacement} est de taille un sous-multiple de la différence
de période entre la date de fin de \code{series} et \code{date_ts}, le vecteur
\code{replacement} est répété jusqu'à la date \code{date_ts}. Sinon une erreur est
générée.
}
\examples{

ts1 <- ts(
    data = c(rep(NA_integer_, 3L), 1L:10L, rep(NA_integer_, 3L)),
    start = 2020,
    frequency = 12
)
x <- rep(3L, 2L)

extend_ts(series = ts1, replacement = x)
extend_ts(series = ts1, replacement = x, replace_na = FALSE)
extend_ts(series = ts1, replacement = x,
          date_ts = c(2021L, 7L), replace_na = TRUE)

}

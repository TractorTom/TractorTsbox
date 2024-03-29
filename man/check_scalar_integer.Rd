% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check.R
\name{check_scalar_integer}
\alias{check_scalar_integer}
\alias{assert_scalar_integer}
\title{Vérifie la conformité d'un entier scalaire}
\usage{
check_scalar_integer(x, warn = TRUE)

assert_scalar_integer(
  x,
  add = NULL,
  .var.name = checkmate::vname(x),
  warn = TRUE
)
}
\arguments{
\item{x}{un entier relatif (positif, négatif ou nul)}

\item{warn}{un booleen}

\item{add}{Collection pour stocker les messages d'erreurs (Default is NULL)}

\item{.var.name}{Nom de l'objet à vérifier pour afficher dans les messages}
}
\value{
En sortie la fonction retourne l'objet \code{x} de manière invisible ou
une erreur.
}
\description{
Vérifie la conformité d'un entier scalaire
}
\details{
On vérifie que l'objet \code{x} en entrée est bien un entier.
Cette fonction s'appuie essentiellement sur la fonction
\code{checkmate::assert_int}.
Il y a néanmoins une petite subtilité : on vérifie si l'objet \code{x} est de
type double ou integer. Si l'objet est de type double (et non integer), la
fonction retournera aussi un warning.
Dans le premier cas, on affichera un warning et on corrigera l'objet au
format integer pour les traitements ultérieurs. En sortie, \code{x} est retourné
de manière invisible.
Si l'argument \code{warn} vaut \code{FALSE}, alors la fonction ne retournera pas de
warning lors de l'évaluation.

Selon le préfixe de la fonction :
\itemize{
\item si le check réussi :
\itemize{
\item la fonction \code{assert_scalar_integer} retourne l'objet \code{x} de manière
invisible;
\item la fonction \code{check_scalar_integer} retourne le booléen \code{TRUE}.
}
\item si le check échoue :
\itemize{
\item la fonction \code{assert_scalar_integer} retourne un message d'erreur;
\item la fonction \code{check_scalar_integer} retourne une chaîne de caractère
signalant le problème.
}
}
}
\examples{

assert_scalar_integer(1L)
assert_scalar_integer(100L)
assert_scalar_integer(-4L)
assert_scalar_integer(0L)

check_scalar_integer(1L)
check_scalar_integer(100L)
check_scalar_integer(-4L)
check_scalar_integer(0L)

# Avec des erreurs,

check_scalar_integer(Inf)
check_scalar_integer(1:10)
check_scalar_integer(pi)
check_scalar_integer(2.)

}
\seealso{
\code{\link[=check_scalar_natural]{check_scalar_natural()}}, \code{\link[=assert_scalar_natural]{assert_scalar_natural()}}
}

BOOTSTRAP = css/bootstrap.css
BOOTSTRAP_LESS = less/bootstrap.less
BOOTSTRAP_RESPONSIVE = css/bootstrap-responsive.css
BOOTSTRAP_RESPONSIVE_LESS = less/responsive.less
COLABORATORIO_THEME = css/colaboratorio-theme.css
COLABORATORIO_THEME_LESS = less/colaboratorio-theme.less
LESS_COMPRESSOR ?= `which lessc`
WATCHR ?= `which watchr`

#
# BUILD SIMPLE BOOTSTRAP DIRECTORY
# lessc & uglifyjs are required
#

bootstrap:
lessc less/bootstrap.less > css/bootstrap.css
lessc less/responsive.less > css/bootstrap-responsive.css
lessc less/colaboratorio-theme.less > css/colaboratorio-theme.css
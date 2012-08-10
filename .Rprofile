options(repos=c(CRAN='http://mirrors.ustc.edu.cn/CRAN/'))
options(prompt='> ')
options(continue='+   ')

.libPaths('~/.r_library')

.First = function() {
	#library(rgl)
	library(ggplot2)
	library(lattice)
	if(interactive()) try(utils::loadhistory('~/.Rhistory'))
	cat('Start Up.\n')
}

.Last = function() {
	if(interactive()) try(savehistory('~/.Rhistory'))
	cat('exited.\n')
}

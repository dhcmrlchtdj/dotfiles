options(repos=c(CRAN='http://mirrors.ustc.edu.cn/CRAN/'))
options(prompt='> ')
options(continue='+   ')

.libPaths('~/.r_library')

mp <- function(..., plotlist=NULL, cols) {
    require(grid)
    plots <- c(list(...), plotlist)
    numPlots = length(plots)
    plotCols = cols
    plotRows = ceiling(numPlots/plotCols)
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(plotRows, plotCols)))
    vplayout <- function(x, y)
        viewport(layout.pos.row = x, layout.pos.col = y)
    for (i in 1:numPlots) {
        curRow = ceiling(i/plotCols)
        curCol = (i-1) %% plotCols + 1
        print(plots[[i]], vp = vplayout(curRow, curCol))
    }
}

.First = function() {
	#library(rgl)
	library(ggplot2)
	library(lattice)
	if(interactive()) try(utils::loadhistory('~/.Rhistory'))
}

.Last = function() {
	if(interactive()) try(savehistory('~/.Rhistory'))
	cat('Exited!\n')
}

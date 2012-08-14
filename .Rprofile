options(
	repos=c(CRAN='http://mirrors.ustc.edu.cn/CRAN/',
		CRANextra='http://r-forge.r-project.org/'),
	prompt='# ', continue='#   '
)

.libPaths('~/.r_library')

if(interactive()) {
	.First = function() {
		#library(rgl)
		library(lattice)
		library(plyr)
		library(stringr)
		library(reshape2)
		library(ggplot2)
		utils::loadhistory('~/.Rhistory')
	}

	.Last = function() {
		savehistory('~/.Rhistory')
		cat('Exited!\n')
	}

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

	s = source
}

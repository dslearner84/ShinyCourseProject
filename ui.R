# We don't want the species column in the input.
iris <- iris[-5]

shinyUI(pageWithSidebar(
  headerPanel('Iris DBSCAN clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),
                selected=names(iris)[[2]]),
    numericInput('minpts', 'Min no. of Points', 3,
                 min = 1, max = 5)
  ),
  mainPanel(
    plotOutput('clusterplot'),
    h3('Method'),
    p('Density-based spatial clustering of applications with noise (DBSCAN) is a data clustering algorithm proposed by Martin Ester, Hans-Peter Kriegel, Jorg Sander and Xiaowei Xu in 1996. It is a density-based clustering algorithm: given a set of points in some space, it groups together points that are closely packed together.'),
    p('Chose the X variable and Y variable. Modify the Minimum number of points to see the changes reflect in the plot. Min no. of Points is the reachability minimum no. of points.'),
    p('This project uses a eps distance of 0.3')
  )
))
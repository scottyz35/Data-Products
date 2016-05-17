# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Clustering Iris Data"),
    
    # Sidebar with a slider input for the number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("CLusters",
                        "Number of Clusters:",
                        min = 1,
                        max = 7,
                        value = 1)
        ),
        

        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))

#rsconnect::setAccountInfo(name='scottziemke',
 #                           +                           token='0B04A3FBAB5D0159D125033522369B1E',
  #                          +                           secret='eTA6Bfp20MIfqSvc2sGCm+bfeBgxAvshJnSuSVTq')
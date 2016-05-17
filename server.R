shinyServer(function(input, output) {
    
    library(scatterplot3d)
    library(ggplot2)
    data(iris)
    
    output$distPlot <- renderPlot({
        x   <- iris[, 2:4]  #iris data
        clusternum <- input$CLusters
        data <- cbind(iris[,2:4], kmeans(iris[,2:4], clusternum)$cluster, iris[,5])
        colnames(data) <- c("Sepal.Width", "Petal.Length", "Petal.Width","cluster", "Species")
        
        
        with(data, {
            scatterplot3d(Petal.Width,   # x axis
                          Sepal.Width,     # y axis
                          Petal.Length,    # z axis
                          color = as.numeric(cluster),
                          pch = 19,
                          legend = levels(data$cluster),
                          angle = 127,
                          type="h",
                          scale.y=.75,
                          main="3-D Scatterplot of Iris Clustering")
            
        #ggplot(data, aes(cluster, ))

        })
    })
})




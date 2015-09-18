# Define how many plots
n <- 500

# Create a dataframe for storing plot objects
df <- data.frame(n = 1:n,
                 titles = NA)

# Add title objects
df$titles[1:round(0.1*n)] <- 'Initial stakeholder analysis'
df$titles[(round(0.1*n) + 1): round(0.5*n)] <- 'Phase 2'
df$titles[(round(0.5*n) + 1): n] <- 'Phase 3'


# Define function for making background plot
draw_background <- function(){
  plot(1:100,
       1:100, 
       type = 'n',
       xlab = 'Power',
       ylab = 'Interest',
       xaxt = 'n',
       yaxt = 'n')
  mtext(paste0('Low', paste0(rep(' ', 30), collapse = ' '), 'High'), side = 1)
  mtext(paste0('Low', paste0(rep(' ', 15), collapse = ' '), 'High'), side = 2)
}

# Define function for drawing shapes
draw_shape <- function(x = 50, y = 50, text = 'childless women', col = 'red'){
  size = 6 + (0.2 *nchar(text))
  xs <- c(x-size, x+size)
  xs_full <- c(xs, rev(xs))
  ys <- c(y-size, y+size)
  ys_full <- rep(ys, each = 2)
  polygon(x = xs_full,
          y = ys_full,
          col = col,
          border = NA)
  text(x = x, y = y, labels = text, cex = 1.1)
}

# Define groups and colors
groups <- c('childless\nwomen',
            'family',
            'beggars',
            'religious\nleaders',
            'husbands',
            'health\nworkers')
colors <- c('red',
            'blue',
            'darkgreen',
            'grey',
            'darkorange',
            'purple') 
colors <- adjustcolor(colors, alpha.f = 0.4)

# Define starting coordinates
coordinates <- data.frame(group = groups,
                          color = colors,
                          x = c(50, 80, 10, 20, 90, 15),
                          y = c(90, 80, 10, 10, 85, 5),
                          stringsAsFactors = FALSE,
                          x_trend = c(0.5, 0, 0.4, 0, -0.3, 0),
                          y_trend = c(-0.3, -0.2, 0, 0, 0.2, 0.2))

# Make visualization
root <- getwd()
dir.create('output')
setwd('output')
for (i in 1:nrow(df)){
  # Make filename
  filename <- as.character(i)
  while(nchar(filename) < 4){
    filename <- paste0('0', filename)
  }
  filename <- paste0(filename, '.png')
  png(filename = filename,
      width = 680, height = 480)
  # Start a blank canvas for this row:
  draw_background()
  title(main = df$titles[i])
  
  # Group-specific action
  for (j in 1:nrow(coordinates)){
    # Draw
    draw_shape(x = coordinates$x[j], 
               y = coordinates$y[j], 
               text = coordinates$group[j], 
               col = coordinates$color[j])
    # Jitter coordinates
    if(i < nrow(df)){
      coordinates$x[j] <- coordinates$x[j] + sample(seq(-5, 5, 0.01), 1) + 
        coordinates$x_trend[j]
      while(coordinates$x[j] >100 | coordinates$x[j] < 0){
        coordinates$x[j] <- coordinates$x[j] + sample(seq(-5, 5, 0.01), 1)
      }
      coordinates$y[j] <- coordinates$y[j] + sample(seq(-5, 5, 0.01), 1) +
        coordinates$y_trend[j]
      while(coordinates$y[j] >100 | coordinates$y[j] < 0){
        coordinates$y[j] <- coordinates$y[j] + sample(seq(-5, 5, 0.01), 1)
      }
    }
  }
  dev.off()
  print(i)
}
setwd(root)
# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
Seahawks <- c(20, 25, 31, 15, 5, 7, 10, 3, 34, 25, 6, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
Opp <- c(25, 31, 24, 26, 14, 40, 38, 24, 31, 23, 26, 36)

# Combine your two vectors into a dataframe
games <- data.frame(Seahawks, Opp)


# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games$diff <- games$Seahawks - games$Opp


# Create a new column "won" which is TRUE if the Seahawks won
games$won <- games$diff > 0


# Create a vector of the opponent names corresponding to the games played
opponents <- c('Saints', 'Bills', 'Patriots', 'Eagles', 'Buccaneers', 'Panthers',
               'Packers', 'Rams', 'Cardinals', '49ers', 'Lions', 'Falcons')


# Assign your dataframe rownames of their opponents
rownames(games) <- opponents


# View your data frame to see how it has changed!
View()

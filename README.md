# Nat_Parks_Project

This machine learning program analyzes national park data on biodiversity and park trail popularity to suggest the best location for the next national park. Our project seeks to answer the following questions:

1. Does biodiversity have a correllation with park popularity?
2. Where should the next park be built?
3. What categories can we create to plan investment strategy? 

## Project Overview:

### Communication:
1. Slack channel with all members included
2. Email

### Data Sources:

1. [Biodiversity Dataset:](https://www.kaggle.com/datasets/nationalparkservice/park-biodiversity?select=parks.csv)
    a. parks.csv (56 values)
    b. species.csv (119248 values)

2. [Popularity Dataset:](https://www.kaggle.com/datasets/planejane/national-park-trails)
    a. AllTrails data - nationalpark.csv (3288 values)


### Machine Learning Models: 

1. Linear regression to answer if biodiversity affects the popularity of the hike.
    a. Null Hypothesis: 
    b. Alternative Hypothesis: 
    c. Accepted score
Note: If this does not correlate, we could also try to see if popularity negatively affects biodiversity, and repurpose the following algorithms.

2. Random forest model to predict in which states to build more national parks.
Will categorize the states as desireable or not desireable for park investment. 
    a. Target variable: desireable
    b. Dependent variables (features): popularity_score, rating, no_visits, no_species, no_classes, no_families
Note: If we go with the plan B option, we could use no_endangered somehow.
    c. Perform feature importance and redesign features if needed.

3. Dendogram classification algorithm to categorize the parks for direction of future investments.
    a. Categorizes the national parks into a hierarchy based on the features: popularity_score, rating, no_visits, no_species, no_classes, no_families

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

    a. Hypothesis: If trail popularity is based on biodiversity, then parks with over 20 species in the park have over a 60 popularity score.
    
    b. Null Hypothesis: There is no relationship between the biodiversity and popularity if parks of over 20 species are more often to be less than 60 popularity.

    c. Alternative Hypothesis: If trail popularity is not based on popularity, then parks will have less than 20 species will be above the mean in popularity.

    d. Accepted score: Accepted p-value significance of < 0.05

    **Note: If this does not correlate, we could also try to see if popularity negatively affects biodiversity, and repurpose the following algorithms.**

2. Random forest model to predict in which states to build more national parks. Will categorize the states as desireable or not desireable for park investment.

    a. Target variable: desireable

    b. Dependent variables (features): popularity_score, rating, no_visits, no_species, no_classes, no_families

    c. Accuracy score = .70 or higher

    d. Perform feature importance and redesign features if needed.

    **Note: If we go with the plan B option, we could use no_endangered somehow.**

3. Dendogram classification algorithm to categorize the parks for direction of future investments.

    a. Categorizes the national parks into a hierarchy based on the features: popularity_score, rating, no_visits, no_species, no_classes, no_families


### Database Structure: 

Below is an ERD describing the 3 tables we will use in this analysis:

![ERD File](https://github.com/B-Stanley-0316/Nat_Parks_Project/blob/main/Resources/ERD.png)


### Link to Tableau Dashboard

[Link to Tableau Dashboard](https://public.tableau.com/app/profile/brittney.r.stanley/viz/Nat_Parks_Project/Parks_Map?publish=yes)

#### Tools to be Used
1. Tableau Worksheets to create visuals

2. Tableau Dashboard to present created visuals with details

3. Saved to Tableau Public and shared as a link for interactive dashboard

#### Interactive Tools
1. Interactive map is created to show the most popular parks and their locations with information on trail count, acres, and park name when hovering over data point on map.

2. Interactive bar chart to display the top 15 Parks to visit based on average popularity, trail count is shown with shading, number of acres are shown outside of the bar. More information is given when hovering over bar on the graph.
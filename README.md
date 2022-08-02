# Nat_Parks_Project

This machine learning program analyzes national park data on biodiversity and park trail popularity to suggest the best location for the next national park. Our project seeks to answer the following questions:

1. Does biodiversity have a correllation with park popularity?
2. What categories can we create to plan investment strategy? 
3. Where should the next park be built?

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

### Google Slides PowerPoint

[Link to Google Slides](https://docs.google.com/presentation/d/1K_Hdr0zkWgMWZNgbmpIYqnqNQ8xBo2TaI6PAxGkzRgg/edit?usp=sharing)

### Database Structure: 

Below is an ERD describing the 3 tables we will use in this analysis:

![ERD File](https://github.com/B-Stanley-0316/Nat_Parks_Project/blob/main/Resources/ERD.png)


### Machine Learning Models: 

#### 1. Does biodiversity have a correllation with park popularity?

##### Machine Learning models: Linear regression
File: [ML_Linear_Model_Test](ML_Linear_Regression_Test.ipynb)

    a. Hypothesis: If trail popularity is based on biodiversity, then parks with over 20 species in the park have over a 60 popularity score.
    
    b. Null Hypothesis: There is no relationship between the biodiversity and popularity if parks of over 20 species are more often to be less than 60 popularity.

    c. Alternative Hypothesis: If trail popularity is not based on popularity, then parks will have less than 20 species will be above the mean in popularity.

    d. Accepted score: Accepted accuracy score of 0.70

##### Results: 
The linear regression model showed no correlation, proving the null hypothesis to be true: There is no relationship between the biodiversity and popularity of the park. The accuracy score of the linear regression is -0.017, which is significantly below the threshold we set of 0.70. In the scatter plot and linear regression below, the popularity data points are so dispersed that the line is mainly horizontal and not aligned with the shape of the scatter plot. 

![LinearRegressionResults](Resources/ML_Screenshots/regression_fitline.png)

##### Potential Next Steps: 
    a. Test linear regression or multiple linear regression on other data points to find the real driver of popularity.
    b. Use the Yelp API to get park popularity by park for better predictions.
    c. Use the Trails data set to test individual trail popularity with park biodiversity, or use multiple linear regression. 


#### 2. What categories can we create to plan investment strategy? 

##### Machine learning models: PCA and K-Means algorithms
File: [ml_models.ipynb](ml_models.ipynb)

##### Results:
We used 4 categories of principal components to extract features of the trails dataset for further classification:

![PCA Results](Resources/ML_Screenshots/PCA_results.png)

Further K-Means analysis provided 4 main categories to direct trail investment:

![K-Means Results](Resources/ML_Screenshots/scatter_3d_clustering.png)

Trail classes and investment recommendations: 
* Class 1: High popularity and biodiversity = Highest investment level
* Class 2: Medium-high popularity and biodiversity = 2nd highest investment level
* Class 3: Medium-low popularity and biodiversity = 3rd highest investment level
* Class 4: Low popularity and biodiversity = lowest investment level

#### 3. Where should the next park be built?

##### Machine learning models: EasyEnsembleClassifier and RandomForest
File: [ml_models.ipynb](ml_models.ipynb)

##### Results: 
We realized that the resulting machine learning model is predicting which state the parks are in based on trail use and biodiversity data, which is not what we are trying to accomplish here. 

![Easy Ensemble Classifier Classification Report](Resources/ML_Screenshots/EEC_classification_report.png)

![Random Forest Classifier Feature Importance](Resources/ML_Screenshots/RF_Feature_importance.png)

##### Potential Next Steps: 
    a. Re-run this analysis using Popularity as a predictor 
    b. Re-run this analysis using Rating as a predictor


### Tableau Dashboard

[Link to Tableau Dashboard](https://public.tableau.com/app/profile/brittney.r.stanley/viz/Nat_Parks_Project/Parks_Map?publish=yes)

#### Outline of Final Tableau Storyboard:
* Line w/ scatter plot to show our Linear Regression results and show findings on relationship between biodiversity / popularity.
* Heat map w/ states colored to represent categories for investment levels
* Dashboard of Charts:
    * Ranked by popularity
    * Ranked by biodiversity
    * Ranked by hiking difficulty_rating
    * Ranked by Number of trails
* Top 15 parks to visit!
* (Nice to have) Feature of premiere state for next park

#### Tools to be Used
1. Tableau Worksheets to create visuals

2. Tableau Dashboard to present created visuals with details

3. Saved to Tableau Public and shared as a link for interactive dashboard

#### Interactive Tools
1. Interactive map is created to show the most popular parks and their locations with information on trail count, acres, and park name when hovering over data point on map.

2. Interactive bar chart to display the top 15 Parks to visit based on average popularity, trail count is shown with shading, number of acres are shown outside of the bar. More information is given when hovering over bar on the graph.



### Project Limitations

1. We used biodiversity data per park, and popularity data per trail.

We attempted averaging the popularity data by park, which standardized it for the linear regression, but effectively changed the data. In reality, popularity of park is very subjective. 



### Question ideas:

Does the popularity of a park negatively affect biodiversity (i.e. more species with a conservation status/ higher conservation status number)

What we do know:
- popularity score is generated by rating, number of ratings
- popular trails are not necessarily biodiverse (to protect the environment)

What trail features best indicate park rating? 
- length? 
- elev gain?
- features? out-back, or loop? 
- route type
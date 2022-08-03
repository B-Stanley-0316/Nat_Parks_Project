# Initial imports

# Load csv files into df

# # Use unsupervised learning to explore the data

# check for null values

# drop unnecessary columns and change columns w/ get_dummies as needed

# check dtypes of columns are all numerical for testing

# scale data w/ StandardScaler()

# USE PCA to reduce dimensions to # of dimensions needed
    # Pull out the most useful features from these columns: 
        # From trails_df: popularity, 
    # Find the number of components for K-means


# K-Means
# Clustering the data into 2 groups: 
# graph elbow curve

# graph 3d model of scatter plot using PCA values






# # Use Supervised Learning to explore the data and relationships

# Both Multiple/Linear Regression Model - species id, trail, occurrence, abundance (etc)
    # 1.Avg trail popularity per park w/ biodiversity (species count per park)
    # Hypothesis: If trail popularity is based on biodiversity, then parks with over 20 
        # species in the park have over a 60 popularity score.
    # Null Hypothesis: There is no relationship between the biodiversity and popularity if parks of over 20 species 
        # are more often to be less than 60 popularity.
    # Alternative Hypothesis: If trail popularity is not based on popularity, then parks will have less than 20
        # species will be above the mean in popularity. 
    # Accepted p-value significance of < 0.05
# DataFrame = parks.csv with popularity and biodiversity columns


# Random Forest Model
    # targer variable: state
    # features: popularity, visitor_useage, difficulty_rating, elevation_grain, length, 
    #     route_type, avg_rating, num_reviews, features and activities (separated and encoded), 
    #     species(count per park), Occurrence, abundance, 
    #     (conservation_status maybe)
    # Accuracy score = .70 or higher


# EasyClassiferEnsamble (b/c in module challenge it seemed to be the most "accurate")
    # This will be used as an alternative to Random Forest model

# Nice to have: to-do if all goes to plan 
    # PCA / K-Means to come up with categories of parks for investment


# Visualizations (Tableau): 

# Line w/ data points to show our Linear Regression results and prove relationship between biodiversity / popularity.
# Heat map w/ states colored to represent categories for investment levels
# Dashboard of Charts:
    # Ranked by popularity
    # Ranked by biodiversity
    # Ranked by hiking difficulty_rating
    # Ranked by Number of trails_df 
    # Top 15 parks to visit! 
# (Nice to have) Feature of premiere state for next park
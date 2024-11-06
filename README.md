## SQL Final Project
## Project Overview
This project focuses on spotify usage per user using compuutational methods. Specifically, I used computational methods to analyze the spotify data to detect patterns, preferences, and how it relates to each age group. 
## Project Motivation
I use spotify on almost a daily basis either for music, audiobooks, or listening to podcasts. Each method is used for different reasons, such as distraction, uplift my mood, or learning new information and much more. I was curious to see how my personal preferences compared to other users and why they use spotify so I decided to use data from spotify to accomplish my goal using my skills in computational methods.
## Dataset
I utilized spotify data using the **Spotify User Behavior Dataset**, which contains recordings from users of **all ages**. This dataset is publicly available from Kaggle by Meera Ajayakumar at the following link:
https://www.kaggle.com/datasets/meeraajayakumar/spotify-user-behavior-datase
The spotify data is in **.xlsx format** and contains multiple recordings from various users of all ages including their personal preferences. 
## Files and Structure
- **`final_sql_project_script.sql`**: This SQL script handles the import of the **.csv** file when converted from the **.xlsx** file for the spotify data and outlines the Spotify User Behavior Analyzation. 
## Key Methods and Approach
-**Database Setup** Created a database in DBeaver with an information schema and ERD to connect the unique tables together using a primary id, **user_id**, to import the data into each table with their specific data types. Table 1, **Spotify_User**, is information on users and details about each one. Table 2, **Engagement**, is data on preferences on music, genres, podcasts, and time they use spotify most. 
- **Computational Approach**: A **script to query** is employed to extract features from the spotify data and detect patterns associated with preferences. Scripts are well-suited for this type of data due to their ability to manipulate the tables and specific data types per row and column.
## Future Enhancements
- **Data Augmentation**: Implement data augmentation techniques to increase the robustness of the data analyzation.
- **Machine Learning**: Further optimize the analyzation by implementing a machine learning model.
- **Real-time Monitoring**: Develop a real-time monitoring system for continuous user preference based on age.

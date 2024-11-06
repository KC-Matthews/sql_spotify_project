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
- **`eeg_cnn1.py`**: This Python script handles the streaming of the `.edf` EEG data and defines the structural layout of the **Convolutional Neural Network (CNN)** model. The model is trained to classify seizure vs. non-seizure events in the provided EEG data.
## Key Methods and Approach
- **Machine Learning Approach**: A **CNN model** is employed to extract features from the EEG data and detect patterns associated with seizures. CNNs are well-suited for this type of time-series data due to their ability to automatically learn spatial hierarchies from input data.
- **Fast-Fourier Transform**:
- **Data Preprocessing**: The EEG data is preprocessed to ensure proper input formatting for the CNN. This includes steps like data normalization, segmentation of time windows, and transforming EEG signals into a form suitable for input into the neural network.
## How to Run
1. **Run the SQL Script**:
   - The `eeg_cnn1.py` script contains the full implementation of the model.
   - You can run the script using DBeaver by navigating to the project directory and running:
     ```bash
     python eeg_cnn1.py
     ```
## Future Enhancements
- **Data Augmentation**: Implement data augmentation techniques to increase the robustness of the model.
- **Model Optimization**: Further optimize the model's hyperparameters and experiment with different architectures to improve detection accuracy.
- **Real-time Monitoring**: Develop a real-time monitoring system for continuous EEG streaming and seizure detection.
## Acknowledgments
This project was inspired by Elianna, who has given me so much hope for the future of this world just by being born.

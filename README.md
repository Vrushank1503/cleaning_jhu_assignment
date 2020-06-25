############################################################################################################
##### PRE INSTRUCTIONS:                                                                                #####
##### You may need to install the following libraries:                                                 #####
#####   - plyr                                                                                         #####
#####   - dplyr                                                                                        #####
##### You also may need to change the the filepaths to point to the files as you may have placed them  #####
##### somewhere different                                                                              #####
############################################################################################################


############################################################################
### PART 1 - MERGE THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET ###
############################################################################

######################################################################
# IMPORT, EXAMINE AND CLEAN FEATURES AND LABELS ASSOCIATED WITH DATA #
######################################################################

# STEP 1        - Import Features text file
# STEP 1A       - Examine Features table
# STEP 1B       - Clean up Features table

# STEP 2        - Import Activity Labels text file
# STEP 2A       - Examine Activity table
# STEP 2B       - Clean up Activity table

######################################################################
# IMPORT, EXAMINE AND CLEAN TEST SET                                 #
######################################################################

# STEP 3        - Import Subjects text file (1-30, the people that took part in the study)
# STEP 3A       - Examine Test Subjects table
# STEP 3B       - Clean up Test Subjects table

# STEP 4        - Import Data associated with each person that took part in the study
# STEP 4A       - Examine Data table
# STEP 4B       - Clean up Data table
 
# STEP 5        - Import numeric Labels associated with each row. These labels correspond to the type of activity
# STEP 5A       - Examine test Labels table
# STEP 5B       - Clean up test Labels table

######################################################################
# IMPORT, EXAMINE AND CLEAN TRAINING SET                             #
######################################################################

# STEP 6        - Import Subjects text file (1-30, the people that took part in the study)
# STEP 6A       - Examine train Subjects table
# STEP 3B       - Clean up train Subjects table

# STEP 7        - Import Data associated with each person that took part in the study
# STEP 7A       - Examine train Data table
# STEP 7B       - Clean up train Data table

# STEP 8        - Import numeric Labels associated with each row. These labels correspond to the type of activity
# STEP 8A       - Examine train Labels table
# STEP 8B       - Clean up train Labels table

######################################################################
# COMBINE TABLES INTO A MASTER TRAINING AND TESTING TABLE            #
######################################################################

# STEP 9        - Combine table of Test Subjects, Test Labels and Test Data

# STEP 10       - Combine table of Train Subjects, Test Labels and Test Data
# STEP 10A      - Examine train table

######################################################################
# COMBINE MASTER TRAINING AND MASTER TEST TABLES INTO ONE DATASET    #
######################################################################

# STEP 11       - Combine Master Training Data Set, Master Testing Dataset
# STEP 11A      - Examine combined data

############################################################################
### PART 2 - EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD     ###
### DEVIATION ON EACH MEASUREMENT                                        ###
############################################################################

# STEP 1        - Extract column names from combined_data table that contain mean or std dev
# STEP 2        - Subset Data to pull only the mean and std dev fields
# STEP 3        - Examine new table of filtered columns

############################################################################
### PART 3 - USES DESCRIPTIVE ACTIVITY NAMES TO NAME                     ###
### THE ACTIVITIES IN THE DATASET                                        ###
############################################################################

## Already completed, see PART 1, STEP 5B AND 8B. This information was
## later pulled into the test_master and train_master datasets and
## into the combined dataset which filtered_data was subsetted on

############################################################################
### PART 4 - APPROPRIATELY LABELS THE DATA SET WITH DESCRIPTIVE          ###
### VARIABLE NAMES                                                       ###
############################################################################

## Already completed, see PART 1, STEP 4B AND 7B
## later pulled into the test_master and train_master datasets and
## into the combined dataset which filtered_data was subsetted on

############################################################################
### PART 5 - FROM THE DATA SET IN STEP 4, CREATE A SECOND, INDEPENDENT   ###
### TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY    ###
### AND EACH SUBJECT                                                     ###
############################################################################

# STEP 1        - Create new, independent data set that is copy of the filtered dataset from Part 4

# STEP 2        - Use dplyr pipeline to assign the average (mean) of each variable, grouped by Activity and                      Subject


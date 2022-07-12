# CMU_PGSS_2022
Lesson 1:
First, mount google drive
Then, use df = pd.read_csv('<link>') to read the csv file in google drive
df.columns = ["Sepal Length", "Sepal Width", "Petal Length", "Petal Width", "Class"] assigns the columns

This code aggregates the data, labeling certain variables:
df2.groupby('Class').agg({'Sepal Length': ['min', 'max', 'mean', 'std'], 'Sepal Width': ['min', 'max', 'mean', 'std'], 'Petal Length': ['min', 'max', 'mean', 'std'], 
                          'Petal Width': ['min', 'max', 'mean', 'std']})

df2.boxplot('Sepal Length',  'Class') creates a boxplot with sepal length on the y axis and class as the categories

This code replaces all blank boxes with NaN

import numpy as np
myClass['Non-Andrew Email'][myClass['Non-Andrew Email']==""] = np.nan
myClass['Non-Andrew Email'].isna().value_counts()
myClass

Lesson 4:
sweetviz analyze() creates an html about the data.

autoviz as well.

sdv tabular oversamples for better analysis.

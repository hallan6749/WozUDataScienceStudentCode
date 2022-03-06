#!/usr/bin/env python
# coding: utf-8

# In[3]:


import pandas as pd


# In[4]:


#Read in your data as a CCSV file bison
bison = pd.read_csv('/Users/music/Desktop/bison.csv')


# In[5]:


#Look at the first seven rows of your data
bison.head(7)


# In[6]:


#Look at the last seven rows of your data
bison.tail(7)


# In[7]:


#What is the median length of the bison?
bison.median()


# In[33]:


#What is the mean and standard deviation of Length?bison.mean()
bison.describe()


# In[31]:


#Determine the number of rows your dataset 
len(bison)


# In[36]:


#Determine the number of columns your dataset 
len(bison.columns)


# In[42]:


#How many bison are of the species antiquus?
bison.Species.describe()


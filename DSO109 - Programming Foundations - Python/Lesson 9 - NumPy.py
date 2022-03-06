#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np


# In[4]:


#Create a five element array using your favorite numbers named myFavorites.
myFavorites = np.array([1, 5, 7, 9, 11])
print(myFavorites)


# In[10]:


#Perform each of the five aggregate functions on your array.
myFavorites.max()


# In[9]:


myFavorites.sum()


# In[8]:


myFavorites.std()


# In[7]:


myFavorites.mean()


# In[6]:


myFavorites.min()


# In[11]:


#Create a five element array containing only ones named OneArrayToRuleThemAll.
OneArrayToRuleThemAll = np.ones(5)


# In[12]:


#Add myFavorites and OneArrayToRuleThemAll.
OneArrayToRuleThemAll + myFavorites


# In[13]:


#Multiply every element in myFavorites by two.
myFavorites * 2


# In[14]:


#Call the third element in myFavorites using indexing.
myFavorites[2]


# In[41]:


#Create a four element, two-by-two matrix of numbers named TheMatrixHasYou.
TheMatrixHasYou = np.array([[5,2], [3,4]])
print(TheMatrixHasYou)


# In[42]:


#Access the upper left element in TheMatrixHasYou using indexing.
TheMatrixHasYou[0,0]


# In[38]:


#Find the largest number in each row for TheMatrixHasYou.
TheMatrixHasYou.max(axis=0)
TheMatrixHasYou.max(axis=1)


# In[39]:


#Reshape TheMatrixHasYou into a matrix with one row and four columns.
TheMatrixHasYou.reshape(1,4)


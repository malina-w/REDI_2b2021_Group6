# Calculate inconsistency rate after discretization
# Source: R documentation, library chiM
# Update: 28.06.22

# Load library
library(readr)
library(discretization)

# Sample code
#--Discretization using the ChiMerge method
#data(iris)
#disc=chiM(iris,alpha=0.05)
#--cut-points
#disc$cutp

#--CALCULATING INCONSISTENCY RATE
# The inconsistency rate of dataset is calculated as follows:
# (1) two instances are considered inconsistent if they match except for their class labels;
# (2) for all the matching instances (without considering their class labels),
# the inconsistency count is the number of the instances minus the largest number of instances of class labels;
# (3) the inconsistency rate is the sum of all the inconsistency counts
# divided by the total number of instances.


#---CHECK iris dataset ChiMerge
iris_cm6 <- read_csv('chim_iris_6int.csv')
incon_iris_cm6 <- incon(iris_cm6)
incon_iris_cm6

iris_cm8 <- read_csv('chim_iris_8int.csv')
incon_iris_cm8 <- incon(iris_cm8)
incon_iris_cm8

iris_cm10 <- read_csv('chim_iris_10int.csv')
incon_iris_cm10 <- incon(iris_cm10)
incon_iris_cm10

iris_cm15 <- read_csv('chim_iris_15int.csv')
incon_iris_cm155 <- incon(iris_cm15)
incon_iris_cm15

#---CHECK satimage dataset ChiMerge
satimage_cm6 <- read_csv('ChiM_discretized_6Intervals_satimage.csv')
#head(satimage_cm6)
incon_satimage_cm6 <- incon(satimage_cm6)
incon_satimage_cm6

satimage_cm8 <- read_csv('ChiM_discretized_8Intervals_satimage.csv')
incon_satimage_cm8 <- incon(satimage_cm8)
incon_satimage_cm8

satimage_cm10 <- read_csv('ChiM_discretized_10Intervals_satimage.csv')
incon_iris_cm10 <- incon(satimage_cm10)
incon_iris_cm10

satimage_cm15 <- read_csv('ChiM_discretized_15Intervals_satimage.csv')
incon_satimage_cm15 <- incon(satimage_cm15)
incon_satimage_cm15

#---CHECK australia dataset ChiMerge
australia_cm6 <- read_csv('ChiM_discretized_6Intervals_satimage.csv')
incon_australia_cm6 <- incon(australia_cm6)
incon_australia_cm6

australia_cm8 <- read_csv('ChiM_discretized_8Intervals_satimage.csv')
incon_australia_cm8 <- incon(australia_cm8)
incon_australia_cm8

australia_cm10 <- read_csv('ChiM_discretized_10Intervals_satimage.csv')
incon_australia_cm10 <- incon(australia_cm10)
incon_australia_cm10

australia_cm15 <- read_csv('ChiM_discretized_15Intervals_satimage.csv')
incon_australia_cm15 <- incon(australia_cm15)
incon_australia_cm15


#---CHECK Pen digits dataset ChiMerge
pen_cm6 <- read_csv('chim_pen_6int.csv')
#head(pen_cm6)
incon_pen_cm6 <- incon(pen_cm6) # 0.01333333
incon_pen_cm6

pen_cm8 <- read_csv('chim_pen_8int.csv')
#head(pen_cm8)
incon_pen_cm8 <- incon(pen_cm8) # 0.01333333
incon_pen_cm8

pen_cm10 <- read_csv('chim_pen_10int.csv')
#head(pen_cm10)
incon_pen_cm10 <- incon(pen_cm10) # 0.01333333
incon_pen_cm10

pen_cm15 <- read_csv('chim_pen_15int.csv')
#head(pen_cm15)
incon_pen_cm15 <- incon(pen_cm15) # 0.01333333
incon_pen_cm15



# DECISITION TREE DISCRETIZATION
#1. ---CHECK Pen digits dataset DT
pen_DTs <- read_csv('DT_small_discretized_pen.csv')
#head(pen_DTs)
incon_pen_DTs <- incon(pen_DTs)
incon_pen_DTs

pen_DTm <- read_csv('DT_medium_discretized_pen.csv')
#head(pen_DTm)
incon_pen_DTm <- incon(pen_DTm)
incon_pen_DTm

pen_DTl <- read_csv('DT_large_discretized_pen.csv')
#head(pen_DTl)
incon_pen_DTl <- incon(pen_DTl)
incon_pen_DTl

pen_DTxl <- read_csv('DT_verylarge_discretized_pen.csv')
#head(pen_DTxl)
incon_pen_DTxl <- incon(pen_DTxl)
incon_pen_DTxl



#2. ---CHECK Australia dataset DT
australia_DTs <- read_csv('DT_small_discretized_australia.csv')
#head(australia_DTs)
incon_australia_DTs <- incon(australia_DTs) 
incon_australia_DTs

australia_DTm <- read_csv('DT_medium_discretized_australia.csv')
#head(australia_DTm)
incon_australia_DTm <- incon(australia_DTm) 
incon_australia_DTm

australia_DTl <- read_csv('DT_large_discretized_australia.csv')
#head(australia_DTl)
incon_australia_DTl <- incon(australia_DTl)
incon_australia_DTl

australia_DTxl <- read_csv('DT_verylarge_discretized_australia.csv')
#head(australia_DTxl)
incon_australia_DTxl <- incon(australia_DTxl)
incon_australia_DTxl


#3. ---CHECK Satimage dataset DT
satimage_DTs <- read_csv('DT_small_discretized_satimage.csv')
#head(satimage_DTs)
incon_satimage_DTs <- incon(satimage_DTs)
incon_satimage_DTs

satimage_DTm <- read_csv('DT_medium_discretized_satimage.csv')
incon_satimage_DTm <- incon(satimage_DTm)
incon_satimage_DTm

satimage_DTl <- read_csv('DT_large_discretized_satimage.csv')
incon_satimage_DTl <- incon(satimage_DTl)
incon_satimage_DTl

satimage_DTxl <- read_csv('DT_verylarge_discretized_satimage.csv')
incon_satimage_DTxl <- incon(satimage_DTxl) 
incon_satimage_DTxl


#4. ---CHECK Iris dataset DT
iris_DTs <- read_csv('DT_small_discretized_iris.csv')
incon_iris_DTs <- incon(iris_DTs)
incon_iris_DTs

iris_DTm <- read_csv('DT_medium_discretized_iris.csv')
incon_iris_DTm <- incon(iris_DTm)
incon_iris_DTm

iris_DTl <- read_csv('DT_large_discretized_iris.csv')
incon_iris_DTl <- incon(iris_DTl)
incon_iris_DTl

iris_DTxl <- read_csv('DT_verylarge_discretized_iris.csv')
incon_iris_DTxl <- incon(iris_DTxl) 
incon_iris_DTxl




#--- aus_ewd
aus_ewd1 <- read_csv('aus_ewd1.csv')
head(aus_ewd1)
incon_aus_ewd1 <- incon(aus_ewd1)
aus_ewd2 <- read_csv('aus_ewd2.csv')
incon_aus_ewd2 <- incon(aus_ewd2)
aus_ewd3 <- read_csv('aus_ewd3.csv')
incon_aus_ewd3 <- incon(aus_ewd3)

#---- aus_efd
aus_efd1 <- read_csv('aus_efd1.csv')
head(aus_efd1)
incon_aus_efd1 <- incon(aus_efd1)

aus_efd2 <- read_csv('aus_efd2.csv')
incon_aus_efd2 <- incon(aus_efd2)

aus_efd3 <- read_csv('aus_efd3.csv')
incon_aus_efd3 <- incon(aus_efd3)

#--- aus_ffd
aus_ffd1 <- read_csv('aus_ffd1.csv')
incon_aus_ffd1 <- incon(aus_ffd1)

aus_ffd2 <- read_csv('aus_ffd2.csv')
incon_aus_ffd2 <- incon(aus_ffd2)

aus_ffd3 <- read_csv('aus_ffd3.csv')
incon_aus_ffd3 <- incon(aus_ffd3)

aus_ffd4 <- read_csv('aus_ffd4.csv')
incon_aus_ffd4 <- incon(aus_ffd4)


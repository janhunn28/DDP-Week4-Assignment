Loblolly Pine Height Prediction Based on Age
========================================================
author: Janice Hunnings
date: September 30, 2017
autosize: true

Description of the Loblolly Pine
========================================================

The Loblolly pine tree is native to the Southeastern United States and the wood 
industry classifies the species as a southern yellow pine.  The U.S. Forest Service surveys
found that loblolly pine is the second most common species of tree in the United States.  

The loblolly is a tall attractive evergreen with yellow to dark-green needles up to 10
inches long. The columnar trunk of the loblolly is also very lovely, covered with
reddish-brown plates of bark.  The loblolly pine is more than just a pretty face. It's an
important timber tree.


Why This App is Important
========================================================
For its timber, the pine species is regarded as the most commercially important tree in
Southeastern US.  It is for this very reason that this app was created. It is a fast 
growing tree with a very straight trunk.  In order to take full advantage of planning for
wood production estimates, this application will be useful predicting the heights of the
trees from seed to timber production time.


Summary of the Data Used
========================================================

```r
summary(Loblolly)
```

```
     height           age            Seed   
 Min.   : 3.46   Min.   : 3.0   329    : 6  
 1st Qu.:10.47   1st Qu.: 5.0   327    : 6  
 Median :34.00   Median :12.5   325    : 6  
 Mean   :32.36   Mean   :13.0   307    : 6  
 3rd Qu.:51.36   3rd Qu.:20.0   331    : 6  
 Max.   :64.10   Max.   :25.0   311    : 6  
                                (Other):48  
```

In 25 years - WOW!!
========================================================
From just this one example, it is shown that a Loblolly Pine can grow to almost 61 ft
in height in just 25 years!


```r
head(Loblolly)
```

```
   height age Seed
1    4.51   3  301
15  10.89   5  301
29  28.72  10  301
43  41.74  15  301
57  52.70  20  301
71  60.92  25  301
```


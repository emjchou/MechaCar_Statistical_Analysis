# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Linear Regression output:

![linear regression output image](/Images/linear_regression.PNG)

The following variables/coefficients provide a non-random amount of variance to the mpg values, due to low Pr(>|t|) values:
- (Intercept)
- vehicle_length
- ground_clearance

The slope of the linear model is not considered to be zero, and the linear model predicts mpg of MechaCar prototypes effectively. This can be determined by viewing the r-squared value and p-value in the Linear Regression output.
The r-squared value is 0.715 (71.5%), which indicates that the regression model represents real-world data points quite well. In addition, the p-value is 5.35e-11, which is smaller than an assumed significance level of 0.05. 

## Summary Statistics on Suspension Coils
Total Summary for suspension coil's PSI:

![total summary table image](/Images/total_summary.PNG)

Summary by Lot for suspension coil's PSI:

![lot summary table image](/Images/lot_summary.PNG)

Based on design specs, the variance of the suspension coils must not exceed 100lbs/sq.inch. In viewing the summary tables above, it seems that the Variance for the PSI overall meets this design specification for all manufacturing lots in total. This is not true, however, for each individual manufacturing lot, as the Lot summary shows that Lot3 PSI has a variance of 170.3, which exceeds the design specifications. 

## T-Tests on Suspension Coils

![t-test for all lots](Images/ttest_allLots.PNG)

![t-test for lot 1](Images/ttest_Lot1.PNG)

![t-test for lot 2](Images/ttest_Lot2.PNG)

![t-test for lot 3](Images/ttest_Lot3.PNG)


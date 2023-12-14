library(wooldridge)

#* 1.
ex1_list <- list(
    "重回帰分析" = lm(educ ~ profocc + clerocc + servocc, data <- wage1)
)


print(
    msummary(
        ex1_list,
        stars=TRUE,
        gof_omit = "R2|R2 Adj.|AIC|BIC|Log.Lik.|RMSE",
        fmt="%.4f"
    )
)
# y = 11.0351 + 3.3328 * profocc + 1.4763 * clerocc + servocc * 0.4109

#* 2.
#https://qiita.com/mendako/items/ed78321bacd04ff4511c

ex2_list <- list(
    "Default" = lm(educ ~ profocc + clerocc + servocc, data <- wage1),
    "Robust" = lm_robust(educ ~ profocc + clerocc + servocc, data <- wage1, se_type = "stata")
)

print(
    msummary(
        ex2_list,
        stars=TRUE,
        gof_omit = "R2|R2 Adj.|AIC|BIC|Log.Lik.|RMSE",
        fmt="%.4f"
    )
)
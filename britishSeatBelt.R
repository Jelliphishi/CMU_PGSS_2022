library(readr)
britishSeatBeltStudy <- read_csv("https://raw.githubusercontent.com/menonpg/CMU_PGSS_2021/main/Week01/L2-762021/britishSeatBeltStudy.csv", 
                                 col_types = cols(law = col_factor(levels = c("0", "1")), Date = col_date(format = "%Y-%m-%d")))
View(britishSeatBeltStudy)

britishSeatBeltStudy$FractionOfDriversKilled = britishSeatBeltStudy$DriversKilled /britishSeatBeltStudy$drivers

summary(britishSeatBeltStudy$FractionOfDriversKilled)

t.test(britishSeatBeltStudy$FractionOfDriversKilled [which(britishSeatBeltStudy$law %in% c(1))], 
       britishSeatBeltStudy$FractionOfDriversKilled [which(britishSeatBeltStudy$law %in% c(0))], 
       var.equal = F, paired = F)
       
#Linear Regression Analysis: Logistic Regression

fit <- glm (formula = law ~ DriversKilled + drivers + FractionsOfDriversKilled + kms + PetrolPrice, data = britishSeatBeltStudy, family = 'binomial')

summary(fit)

fit <- lm (formula = DriversKilled - law + kms + PetrolPrice, data = britishSeatBeltStudy, family = 'binomial')

summary(fit)
dir.create('raw_data')
dir.create('clean_data')
dir.create('scripts')
dir.create('results')
dir.create('plots')

data <- read.csv('raw_data/patient_info.csv')
str(data)
summary(data)
head(data)

data$age <- as.numeric(data$age)
data$gender <- as.factor(data$gender) 
data$diagnosis <- as.factor(data$diagnosis)
data$smoker <- as.factor(data$smoker)

data$smoker_binary <- ifelse(data$smoker == 'Yes', 1,0)

write.csv(data,'clean_data/patient_info_clean.csv')
save.image(file = 'full_workspace.RData')


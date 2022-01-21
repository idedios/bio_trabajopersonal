library(MLDataR)

tir <- MLDataR::thyroid_disease

write.csv(tir, file = "dataset_tiroides.csv")


sessionInfo()
 
#order
head(tir)

sort(tir$patient_age)
tir2 <- tir[order(tir$patient_age),]

tir_completo <- tir[complete.cases(tir),]

#aggregate necesita tres parametros, los valores que vamos a agregar, edad, 
#grupos por los que queremos agregar y el estadistico que queramos utilizar. 
edad_tyr <- aggregate(tir_completo$patient_age, 
          list(tir_completo$ThryroidClass), 
          mean)
names(edad_tyr) <- c("Tiroides", "Media")


aggregate(tir_completo$patient_age, 
          list(tir_completo$ThryroidClass, 
          tir_completo$patient_gender),
median)


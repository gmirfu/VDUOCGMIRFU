githubURL <- ("https://github.com/gmirfu/VDUOCGMIRFU/raw/main/r21012_EJOB_BDD_v1_0.rds")
obj <- readRDS(url(githubURL,method = "libcurl"))
data <- obj$variables
demodata <- data[,c(2,6,7,8,9,10,11,20,34,39,44)]
colnames(demodata) <- c("Districte","Espanyola","UE","NoUe","Edat","Sexe","Genere","Llengua Habitual","Situacio habitatge","Activitat principal","Nivell Estudis")
poldata <- data[,193:213]
colnames(poldata) <- c("Immigracio","Adopcio Homosexual","Reduccio Contaminacio","Violencia Masclista en Joves", "Existencia del masclisme","Matrimoni Homosexual","Interes Politica","Esport","Cultura i Oci","Partits i Sindicats","Religio","ONG","Lleure Educatiu","Cooperatives","Moviments Socials","Eix esquerra dreta","Catalunya quant Espanya","Valoracio Ajuntament","Prioritat politica 1", "Prioritat politica 2", "Prioritat politica 3")
saldata <- data[,223:247]
colnames(saldata) <- c("General","Manca de Concentracio","Insomni","Sentir-se util","Indecisio","Tensio","Dificultats","Capacitat de Gaudir","Capacitat de fer front problemes", "Deprimit", "Perdua de Confiança", "Sensacio de no servir per a res", "Feliç")
levels(poldata$`Prioritat politica 1`)[1] <- "Estudis i Sortides"
levels(poldata$`Prioritat politica 1`)[2] <- "Recerca feina"
levels(poldata$`Prioritat politica 1`)[3] <- "Equipaments Juvenils"
levels(poldata$`Prioritat politica 1`)[4] <- "Espai public"
levels(poldata$`Prioritat politica 1`)[5] <- "Activitats Culturals"
levels(poldata$`Prioritat politica 1`)[6] <- "Transport public"
levels(poldata$`Prioritat politica 1`)[7] <- "Habitatge"
levels(poldata$`Prioritat politica 1`)[8] <- "Biblioteques"
levels(poldata$`Prioritat politica 1`)[9] <- "Beques"
levels(poldata$`Prioritat politica 1`)[10] <- "Creacio Cultural"
levels(poldata$`Prioritat politica 1`)[11] <- "Suport psicologic"
levels(poldata$`Prioritat politica 1`)[12] <- "Altres"

levels(poldata$`Prioritat politica 2`)[1] <- "Estudis i Sortides"
levels(poldata$`Prioritat politica 2`)[2] <- "Recerca feina"
levels(poldata$`Prioritat politica 2`)[3] <- "Equipaments Juvenils"
levels(poldata$`Prioritat politica 2`)[4] <- "Espai public"
levels(poldata$`Prioritat politica 2`)[5] <- "Activitats Culturals"
levels(poldata$`Prioritat politica 2`)[6] <- "Transport public"
levels(poldata$`Prioritat politica 2`)[7] <- "Habitatge"
levels(poldata$`Prioritat politica 2`)[8] <- "Biblioteques"
levels(poldata$`Prioritat politica 2`)[9] <- "Beques"
levels(poldata$`Prioritat politica 2`)[10] <- "Creació Cultural"
levels(poldata$`Prioritat politica 2`)[11] <- "Suport psicologic"
levels(poldata$`Prioritat politica 2`)[12] <- "Altres"

levels(poldata$`Prioritat politica 3`)[1] <- "Estudis i Sortides"
levels(poldata$`Prioritat politica 3`)[2] <- "Recerca feina"
levels(poldata$`Prioritat politica 3`)[3] <- "Equipaments Juvenils"
levels(poldata$`Prioritat politica 3`)[4] <- "Espai public"
levels(poldata$`Prioritat politica 3`)[5] <- "Activitats Culturals"
levels(poldata$`Prioritat politica 3`)[6] <- "Transport public"
levels(poldata$`Prioritat politica 3`)[7] <- "Habitatge"
levels(poldata$`Prioritat politica 3`)[8] <- "Biblioteques"
levels(poldata$`Prioritat politica 3`)[9] <- "Beques"
levels(poldata$`Prioritat politica 3`)[10] <- "Creació Cultural"
levels(poldata$`Prioritat politica 3`)[11] <- "Suport psicologic"
levels(poldata$`Prioritat politica 3`)[12] <- "Altres"

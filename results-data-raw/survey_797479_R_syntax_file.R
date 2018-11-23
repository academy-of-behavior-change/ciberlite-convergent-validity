data <- read.csv("survey_797479_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "Dit is een onderzoek naar vijf gezondheidsgedragingen. Over elk gedrag worden een aantal vragen gesteld om in kaart te brengen hoe u over het gedrag denkt. Het doel van het onderzoek is om te kijken of de redenen die mensen voor elk gedrag geven ongeveer hetzelfde zijn. Is het bijvoorbeeld voor elk gedrag even belangrijk hoe prettig mensen het vinden, of wat andere mensen doen?	Deze studie is zo opgezet dat alle data anoniem worden verzameld. Deze zijn dus nooit naar u te herleiden. Bovendien kunt u op elk moment stoppen. Als u nog vragen heeft kunt u die altijd stellen via ciberlite@a-bc.eu. Alleen personen van 18 jaar en ouder mogen meedoen aan deze studie.	Door akkoord te gaan met deelname geeft u aan bovenstaande tekst te hebben gelezen en begrepen, geeft u aan dat u 18 jaar of ouder bent, en geeft u toestemming om uw data, die anoniem zullen worden verzameld, te gebruiken voor wetenschappelijk onderzoek."
data[, 5] <- factor(data[, 5], levels=c("yes","no"),labels=c("Ja, ik ga akkoord met deelname.", "Nee, ik ga niet akkoord met deelname."))
names(data)[5] <- "informedConsent"
# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "{if(rand(0,1),\"short\",\"long\")}"
names(data)[6] <- "marathonVersion"
# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "{if(rand(0,1),\"short\",\"long\")}"
names(data)[7] <- "coffeeVersion"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "{if(rand(0,1),\"short\",\"long\")}"
names(data)[8] <- "exerciseVersion"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "{if(rand(0,1),\"short\",\"long\")}"
names(data)[9] <- "smokingVersion"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "{if(rand(0,1),\"short\",\"long\")}"
names(data)[10] <- "alcoholVersion"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "Jammer dat u heeft besloten niet mee te doen met deze studie. Wij zijn heel benieuwd waarom: als u wilt kunt u de reden hiervoor hieronder aangeven."
names(data)[11] <- "noConsentReason"
# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "[Ik ben van plan om de komende minuten een vragenlijst in te vullen.Absoluut niet | Absoluut wel] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 12] <- factor(data[, 12], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[12] <- "practiceBehavior_intention"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "[Voor mijzelf is de komende minuten een vragenlijst invullen ...Slecht | Goed] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 13] <- factor(data[, 13], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[13] <- "practiceBehavior_attInstrumental"
# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "[Voor mijzelf is de komende minuten een vragenlijst invullen ...Onprettig | Prettig] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 14] <- factor(data[, 14], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[14] <- "practiceBehavior_attExperiential"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[Als ik de komende minuten een vragenlijst invul, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 15] <- factor(data[, 15], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[15] <- "practiceBehavior_pnInjunctive"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "[Hoeveel van de mensen die zijn zoals jij vullen de komende minuten een vragenlijst in?Niemand | Iedereen] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 16] <- factor(data[, 16], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[16] <- "practiceBehavior_pnDescriptive"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende minuten een vragenlijst in kan vullen.Helemaal geen vertrouwen | Heel veel vertrouwen] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 17] <- factor(data[, 17], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[17] <- "practiceBehavior_pbcCapacity"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[Of ik de komende minuten een vragenlijst invul, bepaal ik ...Helemaal niet zelf | Helemaal zelf] 	Dit is een oefenvraag, om te wennen aan de vragen die we stellen.	Deze vragen gaan over de komende minuten een vragenlijst invullen.	 "
data[, 18] <- factor(data[, 18], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[18] <- "practiceBehavior_pbcControl"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[Ik heb de intentie om de komende maand een marathon uit te lopen.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 19] <- factor(data[, 19], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[19] <- "marathon_intInt"
# LimeSurvey Field type: F
data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "[Ik zal de komende maand een marathon uitlopen.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 20] <- factor(data[, 20], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[20] <- "marathon_intWill"
# LimeSurvey Field type: F
data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "[Ik ben bereid om de komende maand een marathon uit te lopen.Onwaar | Waar] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 21] <- factor(data[, 21], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[21] <- "marathon_intWilling"
# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[Ik ben van plan om de komende maand een marathon uit te lopen.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 22] <- factor(data[, 22], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[22] <- "marathon_intPlan"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Voor mijzelf is de komende maand een marathon uitlopen ...Slecht | Goed] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 23] <- factor(data[, 23], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[23] <- "marathon_attInstrGood"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Voor mijzelf is de komende maand een marathon uitlopen ...Onprettig | Prettig] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 24] <- factor(data[, 24], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[24] <- "marathon_attExperPleasant"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Voor mijzelf is de komende maand een marathon uitlopen ...Schadelijk | Voordelig] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 25] <- factor(data[, 25], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[25] <- "marathon_attInstrBeneficial"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Voor mijzelf is de komende maand een marathon uitlopen ...Saai | Interessant] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 26] <- factor(data[, 26], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[26] <- "marathon_attExperInteresting"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik de komende maand een marathon moet uitlopen.Onwaar | Waar] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 27] <- factor(data[, 27], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[27] <- "marathon_pnInjunctiveShould"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Als ik de komende maand een marathon uitloop, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 28] <- factor(data[, 28], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[28] <- "marathon_pnInjunctiveApprove"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[De meeste mensen die ik respecteer en bewonder lopen de komende maand een marathon uit.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 29] <- factor(data[, 29], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[29] <- "marathon_pnDescriptiveAdmire"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Hoeveel van de mensen die zijn zoals jij lopen de komende maand een marathon uit?Niemand | Iedereen] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 30] <- factor(data[, 30], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[30] <- "marathon_pnDescriptiveLikeMe"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand een marathon kan uitlopen.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 31] <- factor(data[, 31], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[31] <- "marathon_pbcCapacityConfidenc"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Of ik de komende maand een marathon uitloop, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 32] <- factor(data[, 32], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[32] <- "marathon_pbcControlUpToMe"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Als ik echt zou willen, dan zou ik de komende maand een marathon kunnen uitlopen.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 33] <- factor(data[, 33], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[33] <- "marathon_pbcCapacityWantedTo"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Of ik de komende maand een marathon uitloop is onder mijn controle.Helemaal niet | Volledig] Deze vragen gaan over de komende maand een marathon uitlopen."
data[, 34] <- factor(data[, 34], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[34] <- "marathon_pbcControlUnder"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "{self.gseq + 1}"
names(data)[35] <- "marathonOrder"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[Ik heb de intentie om de komende maand helemaal geen koffie te drinken.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 36] <- factor(data[, 36], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[36] <- "coffee_intInt"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[Ik zal de komende maand helemaal geen koffie drinken.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 37] <- factor(data[, 37], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[37] <- "coffee_intWill"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[Ik ben bereid om de komende maand helemaal geen koffie te drinken.Onwaar | Waar] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 38] <- factor(data[, 38], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[38] <- "coffee_intWilling"
# LimeSurvey Field type: F
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[Ik ben van plan om de komende maand helemaal geen koffie te drinken.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 39] <- factor(data[, 39], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[39] <- "coffee_intPlan"
# LimeSurvey Field type: F
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[Voor mijzelf is de komende maand helemaal geen koffie drinken ...Slecht | Goed] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 40] <- factor(data[, 40], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[40] <- "coffee_attInstrGood"
# LimeSurvey Field type: F
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "[Voor mijzelf is de komende maand helemaal geen koffie drinken ...Onprettig | Prettig] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 41] <- factor(data[, 41], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[41] <- "coffee_attExperPleasant"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[Voor mijzelf is de komende maand helemaal geen koffie drinken ...Schadelijk | Voordelig] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 42] <- factor(data[, 42], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[42] <- "coffee_attInstrBeneficial"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[Voor mijzelf is de komende maand helemaal geen koffie drinken ...Saai | Interessant] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 43] <- factor(data[, 43], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[43] <- "coffee_attExperInteresting"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik de komende maand helemaal geen koffie moet drinken.Onwaar | Waar] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 44] <- factor(data[, 44], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[44] <- "coffee_pnInjunctiveShould"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[Als ik de komende maand helemaal geen koffie drink, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 45] <- factor(data[, 45], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[45] <- "coffee_pnInjunctiveApprove"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[De meeste mensen die ik respecteer en bewonder drinken de komende maand helemaal geen koffie.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 46] <- factor(data[, 46], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[46] <- "coffee_pnDescriptiveAdmire"
# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[Hoeveel van de mensen die zijn zoals jij drinken de komende maand helemaal geen koffie?Niemand | Iedereen] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 47] <- factor(data[, 47], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[47] <- "coffee_pnDescriptiveLikeMe"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik in staat ben om de komende maand helemaal geen koffie te drinken.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 48] <- factor(data[, 48], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[48] <- "coffee_pbcCapacityConfidenc"
# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[Of ik de komende maand helemaal geen koffie drink, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 49] <- factor(data[, 49], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[49] <- "coffee_pbcControlUpToMe"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[Als ik echt zou willen, dan zou ik in staat zijn om de komende maand helemaal geen koffie te drinken.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 50] <- factor(data[, 50], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[50] <- "coffee_pbcCapacityWantedTo"
# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[Of ik de komende maand helemaal geen koffie drink is onder mijn controle.Helemaal niet | Volledig] Deze vragen gaan over de komende maand helemaal geen koffie drinken."
data[, 51] <- factor(data[, 51], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[51] <- "coffee_pbcControlUnder"
# LimeSurvey Field type: A
data[, 52] <- as.character(data[, 52])
attributes(data)$variable.labels[52] <- "{self.gseq + 1}"
names(data)[52] <- "coffeeOrder"
# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[Ik heb de intentie om de komende maand helemaal niet te roken.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 53] <- factor(data[, 53], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[53] <- "smoking_intInt"
# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[Ik zal de komende maand helemaal niet roken.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 54] <- factor(data[, 54], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[54] <- "smoking_intWill"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[Ik ben bereid om de komende maand helemaal niet te roken.Onwaar | Waar] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 55] <- factor(data[, 55], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[55] <- "smoking_intWilling"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[Ik ben van plan om de komende maand helemaal niet te roken.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 56] <- factor(data[, 56], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[56] <- "smoking_intPlan"
# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[Voor mijzelf is de komende maand helemaal niet roken ...Slecht | Goed] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 57] <- factor(data[, 57], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[57] <- "smoking_attInstrGood"
# LimeSurvey Field type: F
data[, 58] <- as.numeric(data[, 58])
attributes(data)$variable.labels[58] <- "[Voor mijzelf is de komende maand helemaal niet roken ...Onprettig | Prettig] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 58] <- factor(data[, 58], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[58] <- "smoking_attExperPleasant"
# LimeSurvey Field type: F
data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "[Voor mijzelf is de komende maand helemaal niet roken ...Schadelijk | Voordelig] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 59] <- factor(data[, 59], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[59] <- "smoking_attInstrBeneficial"
# LimeSurvey Field type: F
data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "[Voor mijzelf is de komende maand helemaal niet roken ...Saai | Interessant] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 60] <- factor(data[, 60], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[60] <- "smoking_attExperInteresting"
# LimeSurvey Field type: F
data[, 61] <- as.numeric(data[, 61])
attributes(data)$variable.labels[61] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik de komende maand helemaal niet moet roken.Onwaar | Waar] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 61] <- factor(data[, 61], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[61] <- "smoking_pnInjunctiveShould"
# LimeSurvey Field type: F
data[, 62] <- as.numeric(data[, 62])
attributes(data)$variable.labels[62] <- "[Als ik de komende maand helemaal niet rook, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 62] <- factor(data[, 62], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[62] <- "smoking_pnInjunctiveApprove"
# LimeSurvey Field type: F
data[, 63] <- as.numeric(data[, 63])
attributes(data)$variable.labels[63] <- "[De meeste mensen die ik respecteer en bewonder roken de komende maand helemaal niet.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 63] <- factor(data[, 63], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[63] <- "smoking_pnDescriptiveAdmire"
# LimeSurvey Field type: F
data[, 64] <- as.numeric(data[, 64])
attributes(data)$variable.labels[64] <- "[Hoeveel van de mensen die zijn zoals jij roken de komende maand helemaal niet?Niemand | Iedereen] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 64] <- factor(data[, 64], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[64] <- "smoking_pnDescriptiveLikeMe"
# LimeSurvey Field type: F
data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik in staat ben de komende maand helemaal niet te roken.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 65] <- factor(data[, 65], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[65] <- "smoking_pbcCapacityConfidenc"
# LimeSurvey Field type: F
data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "[Of ik de komende maand helemaal niet rook, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 66] <- factor(data[, 66], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[66] <- "smoking_pbcControlUpToMe"
# LimeSurvey Field type: F
data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "[Als ik echt zou willen, dan zou ik in staat zijn de komende maand helemaal niet te roken.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 67] <- factor(data[, 67], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[67] <- "smoking_pbcCapacityWantedTo"
# LimeSurvey Field type: F
data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[Of ik de komende maand helemaal niet rook is onder mijn controle.Helemaal niet | Volledig] Deze vragen gaan over de komende maand helemaal niet roken."
data[, 68] <- factor(data[, 68], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[68] <- "smoking_pbcControlUnder"
# LimeSurvey Field type: A
data[, 69] <- as.character(data[, 69])
attributes(data)$variable.labels[69] <- "{self.gseq + 1}"
names(data)[69] <- "smokingOrder"
# LimeSurvey Field type: F
data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[Ik heb de intentie om de komende maand elke week minstens een uur te sporten.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 70] <- factor(data[, 70], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[70] <- "exercise_intInt"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Ik zal de komende maand elke week minstens een uur sporten.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 71] <- factor(data[, 71], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[71] <- "exercise_intWill"
# LimeSurvey Field type: F
data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[Ik ben bereid om de komende maand elke week minstens een uur te sporten.Onwaar | Waar] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 72] <- factor(data[, 72], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[72] <- "exercise_intWilling"
# LimeSurvey Field type: F
data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[Ik ben van plan om de komende maand elke week minstens een uur te sporten.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 73] <- factor(data[, 73], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[73] <- "exercise_intPlan"
# LimeSurvey Field type: F
data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[Voor mijzelf is de komende maand elke week minstens een uur sporten ...Slecht | Goed] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 74] <- factor(data[, 74], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[74] <- "exercise_attInstrGood"
# LimeSurvey Field type: F
data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "[Voor mijzelf is de komende maand elke week minstens een uur sporten ...Onprettig | Prettig] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 75] <- factor(data[, 75], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[75] <- "exercise_attExperPleasant"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[Voor mijzelf is de komende maand elke week minstens een uur sporten ...Schadelijk | Voordelig] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 76] <- factor(data[, 76], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[76] <- "exercise_attInstrBeneficial"
# LimeSurvey Field type: F
data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[Voor mijzelf is de komende maand elke week minstens een uur sporten ...Saai | Interessant] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 77] <- factor(data[, 77], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[77] <- "exercise_attExperInteresting"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik de komende maand elke week minstens een uur moet sporten.Onwaar | Waar] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 78] <- factor(data[, 78], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[78] <- "exercise_pnInjunctiveShould"
# LimeSurvey Field type: F
data[, 79] <- as.numeric(data[, 79])
attributes(data)$variable.labels[79] <- "[Als ik de komende maand elke week minstens een uur sport, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 79] <- factor(data[, 79], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[79] <- "exercise_pnInjunctiveApprove"
# LimeSurvey Field type: F
data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[De meeste mensen die ik respecteer en bewonder sporten de komende maand welke week minstens een uur.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 80] <- factor(data[, 80], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[80] <- "exercise_pnDescriptiveAdmire"
# LimeSurvey Field type: F
data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "[Hoeveel van de mensen die zijn zoals jij sporten de komende maand elke week minstens een uur?Niemand | Iedereen] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 81] <- factor(data[, 81], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[81] <- "exercise_pnDescriptiveLikeMe"
# LimeSurvey Field type: F
data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik de komende maand elke week minstens een uur kan sporten.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 82] <- factor(data[, 82], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[82] <- "exercise_pbcCapacityConfidenc"
# LimeSurvey Field type: F
data[, 83] <- as.numeric(data[, 83])
attributes(data)$variable.labels[83] <- "[Of ik de komende maand elke week minstens een uur sport, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 83] <- factor(data[, 83], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[83] <- "exercise_pbcControlUpToMe"
# LimeSurvey Field type: F
data[, 84] <- as.numeric(data[, 84])
attributes(data)$variable.labels[84] <- "[Als ik echt zou willen, dan zou ik de komende maand elke week minstens een uur kunnen sporten.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 84] <- factor(data[, 84], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[84] <- "exercise_pbcCapacityWantedTo"
# LimeSurvey Field type: F
data[, 85] <- as.numeric(data[, 85])
attributes(data)$variable.labels[85] <- "[Of ik de komende maand elke week minstens een uur sport is onder mijn controle.Helemaal niet | Volledig] Deze vragen gaan over de komende maand elke week minstens een uur sporten."
data[, 85] <- factor(data[, 85], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[85] <- "exercise_pbcControlUnder"
# LimeSurvey Field type: A
data[, 86] <- as.character(data[, 86])
attributes(data)$variable.labels[86] <- "{self.gseq + 1}"
names(data)[86] <- "exerciseOrder"
# LimeSurvey Field type: F
data[, 87] <- as.numeric(data[, 87])
attributes(data)$variable.labels[87] <- "[Ik heb de intentie om de komende maand helemaal geen alcohol te drinken.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 87] <- factor(data[, 87], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[87] <- "alcohol_intInt"
# LimeSurvey Field type: F
data[, 88] <- as.numeric(data[, 88])
attributes(data)$variable.labels[88] <- "[Ik zal de komende maand helemaal geen alcohol drinken.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 88] <- factor(data[, 88], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[88] <- "alcohol_intWill"
# LimeSurvey Field type: F
data[, 89] <- as.numeric(data[, 89])
attributes(data)$variable.labels[89] <- "[Ik ben bereid om de komende maand helemaal geen alcohol te drinken.Onwaar | Waar] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 89] <- factor(data[, 89], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[89] <- "alcohol_intWilling"
# LimeSurvey Field type: F
data[, 90] <- as.numeric(data[, 90])
attributes(data)$variable.labels[90] <- "[Ik ben van plan om de komende maand helemaal geen alcohol te drinken.Absoluut niet | Absoluut wel] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 90] <- factor(data[, 90], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[90] <- "alcohol_intPlan"
# LimeSurvey Field type: F
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- "[Voor mijzelf is de komende maand helemaal geen alcohol drinken ...Slecht | Goed] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 91] <- factor(data[, 91], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[91] <- "alcohol_attInstrGood"
# LimeSurvey Field type: F
data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "[Voor mijzelf is de komende maand helemaal geen alcohol drinken ...Onprettig | Prettig] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 92] <- factor(data[, 92], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[92] <- "alcohol_attExperPleasant"
# LimeSurvey Field type: F
data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "[Voor mijzelf is de komende maand helemaal geen alcohol drinken ...Schadelijk | Voordelig] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 93] <- factor(data[, 93], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[93] <- "alcohol_attInstrBeneficial"
# LimeSurvey Field type: F
data[, 94] <- as.numeric(data[, 94])
attributes(data)$variable.labels[94] <- "[Voor mijzelf is de komende maand helemaal geen alcohol drinken ...Saai | Interessant] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 94] <- factor(data[, 94], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[94] <- "alcohol_attExperInteresting"
# LimeSurvey Field type: F
data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik de komende maand helemaal geen alcohol moet drinken.Onwaar | Waar] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 95] <- factor(data[, 95], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[95] <- "alcohol_pnInjunctiveShould"
# LimeSurvey Field type: F
data[, 96] <- as.numeric(data[, 96])
attributes(data)$variable.labels[96] <- "[Als ik de komende maand helemaal geen alcohol drink, dan keuren de meeste mensen die belangrijk voor mij zijn dat ...Af | Goed] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 96] <- factor(data[, 96], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[96] <- "alcohol_pnInjunctiveApprove"
# LimeSurvey Field type: F
data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "[De meeste mensen die ik respecteer en bewonder drinken de komende maand helemaal geen alcohol.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 97] <- factor(data[, 97], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[97] <- "alcohol_pnDescriptiveAdmire"
# LimeSurvey Field type: F
data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- "[Hoeveel van de mensen die zijn zoals jij drinken de komende maand helemaal geen alcohol?Niemand | Iedereen] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 98] <- factor(data[, 98], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[98] <- "alcohol_pnDescriptiveLikeMe"
# LimeSurvey Field type: F
data[, 99] <- as.numeric(data[, 99])
attributes(data)$variable.labels[99] <- "[Ik heb er vertrouwen in dat als ik dat wil, ik in staat ben om de komende maand helemaal geen alcohol te drinken.Helemaal geen vertrouwen | Heel veel vertrouwen] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 99] <- factor(data[, 99], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[99] <- "alcohol_pbcCapacityConfidenc"
# LimeSurvey Field type: F
data[, 100] <- as.numeric(data[, 100])
attributes(data)$variable.labels[100] <- "[Of ik de komende maand helemaal geen alcohol drink, bepaal ik ...Helemaal niet zelf | Helemaal zelf] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 100] <- factor(data[, 100], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[100] <- "alcohol_pbcControlUpToMe"
# LimeSurvey Field type: F
data[, 101] <- as.numeric(data[, 101])
attributes(data)$variable.labels[101] <- "[Als ik echt zou willen, dan zou ik in staat zijn om de komende maand helemaal geen alcohol te drinken.Onwaarschijnlijk | Waarschijnlijk] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 101] <- factor(data[, 101], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[101] <- "alcohol_pbcCapacityWantedTo"
# LimeSurvey Field type: F
data[, 102] <- as.numeric(data[, 102])
attributes(data)$variable.labels[102] <- "[Of ik de komende maand helemaal geen alcohol drink is onder mijn controle.Helemaal niet | Volledig] Deze vragen gaan over de komende maand helemaal geen alcohol drinken."
data[, 102] <- factor(data[, 102], levels=c(1,2,3,4,5),labels=c("", "", "", "", ""))
names(data)[102] <- "alcohol_pbcControlUnder"
# LimeSurvey Field type: A
data[, 103] <- as.character(data[, 103])
attributes(data)$variable.labels[103] <- "{self.gseq + 1}"
names(data)[103] <- "alcoholOrder"
# LimeSurvey Field type: F
data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "Hoe oud bent u?"
names(data)[104] <- "age"
# LimeSurvey Field type: A
data[, 105] <- as.character(data[, 105])
attributes(data)$variable.labels[105] <- "Wat is uw geslacht?"
data[, 105] <- factor(data[, 105], levels=c("femal","male"),labels=c("Vrouw", "Man"))
names(data)[105] <- "sex"
# LimeSurvey Field type: F
data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "[Andere] Wat is uw geslacht?"
names(data)[106] <- "sex_other"
# LimeSurvey Field type: F
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "Wat is de hoogste opleiding die u heeft afgerond of nu volgt?"
data[, 107] <- factor(data[, 107], levels=c(1,2,3,4,5,6),labels=c("Basisonderwijs", "VMBO (bijvoorbeeld praktijkonderwijs)", "HAVO / VWO", "MBO (bijvoorbeeld een ROC)", "HBO", "WO (bijvoorbeeld een MSc of PhD)"))
names(data)[107] <- "education"
# LimeSurvey Field type: A
data[, 108] <- as.character(data[, 108])
attributes(data)$variable.labels[108] <- "[Andere] Wat is de hoogste opleiding die u heeft afgerond of nu volgt?"
names(data)[108] <- "education_other"
# LimeSurvey Field type: F
data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- "In welk land woont u?"
data[, 109] <- factor(data[, 109], levels=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249),labels=c("Nederland", "België", "Afghanistan", "Åland", "Albanië", "Algerije", "Amerikaanse Maagdeneilanden", "Amerikaans-Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua en Barbuda", "Argentinië", "Armenië", "Aruba", "Australië", "Azerbeidzjan", "Bahama\'s", "Bahrein", "Bangladesh", "Barbados", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Caribisch Nederland", "Bosnië en Herzegovina", "Botswana", "Bouveteiland", "Brazilië", "Britse Maagdeneilanden", "Brits Indische Oceaanterritorium", "Brunei", "Bulgarije", "Burkina Faso", "Burundi", "Cambodja", "Canada", "Centraal-Afrikaanse Republiek", "Chili", "China", "Christmaseiland", "Cocoseilanden", "Colombia", "Comoren", "Congo-Brazzaville", "Congo-Kinshasa", "Cookeilanden", "Costa Rica", "Cuba", "Curaçao", "Cyprus", "Denemarken", "Djibouti", "Dominica", "Dominicaanse Republiek", "Duitsland", "Ecuador", "Egypte", "El Salvador", "Equatoriaal-Guinea", "Eritrea", "Estland", "Ethiopië", "Faeröer", "Falklandeilanden", "Fiji", "Filipijnen", "Finland", "Frankrijk", "Franse Zuidelijke en Antarctische Gebieden", "Frans-Guyana", "Frans-Polynesië", "Gabon", "Gambia", "Georgië", "Ghana", "Gibraltar", "Grenada", "Griekenland", "Groenland", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinee", "Guinee-Bissau", "Guyana", "Haïti", "Heard en McDonaldeilanden", "Honduras", "Hongarije", "Hongkong", "Ierland", "IJsland", "India", "Indonesië", "Irak", "Iran", "Israël", "Italië", "Ivoorkust", "Jamaica", "Japan", "Jemen", "Jersey", "Jordanië", "Kaaimaneilanden", "Kaapverdië", "Kameroen", "Kazachstan", "Kenia", "Kirgizië", "Kiribati", "Kleine afgelegen eilanden van de Verenigde Staten", "Koeweit", "Kroatië", "Laos", "Lesotho", "Letland", "Libanon", "Liberia", "Libië", "Liechtenstein", "Litouwen", "Luxemburg", "Macau", "Macedonië", "Madagaskar", "Malawi", "Maldiven", "Maleisië", "Mali", "Malta", "Man", "Marokko", "Marshalleilanden", "Martinique", "Mauritanië", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldavië", "Monaco", "Mongolië", "Montenegro", "Montserrat", "Mozambique", "Myanmar", "Namibië", "Nauru", "Nepal", "Nicaragua", "Nieuw-Caledonië", "Nieuw-Zeeland", "Niger", "Nigeria", "Niue", "Noordelijke Marianen", "Noord-Korea", "Noorwegen", "Norfolk", "Oeganda", "Oekraïne", "Oezbekistan", "Oman", "Oostenrijk", "Oost-Timor", "Pakistan", "Palau", "Palestina", "Panama", "Papoea-Nieuw-Guinea", "Paraguay", "Peru", "Pitcairneilanden", "Polen", "Portugal", "Puerto Rico", "Qatar", "Réunion", "Roemenië", "Rusland", "Rwanda", "Saint-Barthélemy", "Saint Kitts en Nevis", "Saint Lucia", "Saint-Pierre en Miquelon", "Saint Vincent en de Grenadines", "Salomonseilanden", "Samoa", "San Marino", "Saoedi-Arabië", "Sao Tomé en Principe", "Senegal", "Servië", "Seychellen", "Sierra Leone", "Singapore", "Sint-Helena, Ascension en Tristan da Cunha", "Sint-Maarten", "Sint Maarten", "Slovenië", "Slowakije", "Soedan", "Somalië", "Spanje", "Spitsbergen en Jan Mayen", "Sri Lanka", "Suriname", "Swaziland", "Syrië", "Tadzjikistan", "Taiwan", "Tanzania", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad en Tobago", "Tsjaad", "Tsjechië", "Tunesië", "Turkije", "Turkmenistan", "Turks- en Caicoseilanden", "Tuvalu", "Uruguay", "Vanuatu", "Vaticaanstad", "Venezuela", "Verenigde Arabische Emiraten", "Verenigde Staten", "Verenigd Koninkrijk", "Vietnam", "Wallis en Futuna", "Westelijke Sahara", "Wit-Rusland", "Zambia", "Zimbabwe", "Zuid-Afrika", "Zuid-Georgia en de Zuidelijke Sandwicheilanden", "Zuid-Korea", "Zuid-Soedan", "Zweden", "Zwitserland"))
names(data)[109] <- "country"
# LimeSurvey Field type: F
data[, 110] <- as.numeric(data[, 110])
attributes(data)$variable.labels[110] <- "Wat zijn de eerste twee cijfers van uw postcode?"
names(data)[110] <- "region"
# LimeSurvey Field type: A
data[, 111] <- as.character(data[, 111])
attributes(data)$variable.labels[111] <- "Als u wilt, kunt u hier uw onderzoekscode invoeren. Dat maakt het mogelijk om uw data te koppelen over vragenlijsten. Bovendien kunt u hiermee uw eigen data terugvinden als u dat wilt, zonder dat uw anonimiteit wordt aangetast.	U kunt uw onderzoekscode genereren op https://onderzoekscode.nl. Met deze code van 6 tekens (2 letters, 2 cijfers, 2 letters) blijft u anoniem: hij is alleen te genereren op basis van uw persoonlijke informatie, en zelfs als iemand die bemachtigt en daarmee uw onderzoekscode genereert, dan is nog steeds niet zeker dat de antwoorden in de vragenlijst de uwe zijn, omdat verschillende combinaties van persoonlijke gegevens tot dezelfde onderzoekscode kunnen leiden."
names(data)[111] <- "researchCode"
# LimeSurvey Field type: F
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "[Ik geef geen toestemming voor het gebruik van mijn data, en ik wil dat mijn data worden verwijderd.] Omdat deze studie in het Virtueel Laboratorium is opgenomen, is deelname primair educatief. Als u er bezwaar tegen heeft dat uw data worden gebruikt voor wetenschappelijke (of andere) doeleinden, dan kunt u dat hier aangeven."
data[, 112] <- factor(data[, 112], levels=c(1,0),labels=c("Ja", "Niet geselecteerd"))
names(data)[112] <- "dataMustBeDeleted_delete"
# LimeSurvey Field type: 
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 114] <- as.numeric(data[, 114])
attributes(data)$variable.labels[114] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 116] <- as.numeric(data[, 116])
attributes(data)$variable.labels[116] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 117] <- as.numeric(data[, 117])
attributes(data)$variable.labels[117] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 118] <- as.numeric(data[, 118])
attributes(data)$variable.labels[118] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 123] <- as.numeric(data[, 123])
attributes(data)$variable.labels[123] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 124] <- as.numeric(data[, 124])
attributes(data)$variable.labels[124] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 131] <- as.numeric(data[, 131])
attributes(data)$variable.labels[131] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 132] <- as.numeric(data[, 132])
attributes(data)$variable.labels[132] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 134] <- as.numeric(data[, 134])
attributes(data)$variable.labels[134] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 137] <- as.numeric(data[, 137])
attributes(data)$variable.labels[137] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 138] <- as.numeric(data[, 138])
attributes(data)$variable.labels[138] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 139] <- as.numeric(data[, 139])
attributes(data)$variable.labels[139] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 140] <- as.numeric(data[, 140])
attributes(data)$variable.labels[140] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 142] <- as.numeric(data[, 142])
attributes(data)$variable.labels[142] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 143] <- as.numeric(data[, 143])
attributes(data)$variable.labels[143] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 144] <- as.numeric(data[, 144])
attributes(data)$variable.labels[144] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 145] <- as.numeric(data[, 145])
attributes(data)$variable.labels[145] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 147] <- as.numeric(data[, 147])
attributes(data)$variable.labels[147] <- ""
#sql_name not set

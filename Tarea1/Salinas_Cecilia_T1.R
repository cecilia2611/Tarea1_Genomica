#cargar mi archivo fasta
tcero<-readRNAStringSet("first (1).fasta")
tcero
#Counting DNA Nucleotides
tc<-strsplit(tcero,"")
#invetigando vi que con una secuencia que tuvieras podrias utilizar la funcion strspliit, al colocar el nombre de objeto que en estecaso es tcero
#automaicamente te dividia todo los caracteres, una vez teniendo esto, tenia pensado hacer un conteo 
#pero esto no funcion� y pens� que talvez era porque eran secuencias distitas,
#lo intent� por cada secuencia y me decia que no encontraba el objeto :c 
#el segundo intento es con substr
tce <- substr(tcero, 0, 20)
tc<-strsplit(tce,"")
tc<-unlist(tc) #hasta aqu� todo marchaba bien 
tabla <- table(tc)
tabla #se supone que aqu� mi enlistado se convierte en tablita de forma que lo similar lo colocaba en un ismo sitio y te decia cuantos eran
####por ultimo lo intent� con nchar
nA <- gsub("A", "", tc)
An <- nchar(tc)-nchar(nA)
print(An)
nC <- gsub("C","", tc)
Cn <- nchar(tc)-nchar(nC)
print(Cn)
nG <- gsub("G","", tc)
Gn <- nchar(tc)-nchar(nG)
print(Gn)
nT <- gsub("T","",tc)
Tn <- nchar(tc)-nchar(nT)
print(Tn)
contar <- An+Cn+Gn+Tn
#####pr�cticamente este solo lo copie y pegu� no entend� el poque restar, al contar "directo"
#de la secuencia me di cuenta que si se estaba en lo correcto las cantidades


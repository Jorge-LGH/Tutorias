# Descargar la librería especializada
install.packages("BiocManager")

# Descargar Biostrings
BiocManager::install("Biostrings")

# Cómo generar una secuencia de nucleótidos de DNA
dnaSeq <- DNAString("TTCAGATCTAGTTCGTGTGTGACTGATGATCTGTCACACGTTTTTCTGATCTTCTGACTAGTCGAT")
dnaSeq

# Cómo generar una secuencia de nucleótidos de RNA
rnaSeq <- RNAString("UUCAGAUCUAGUUCGUGUGUGACUGAUGAUCUGUCACACGUUUUCUGAUCUUCUGACUAGUCGAU")
rnaSeq

# Cómo generar una secuencia de aminoácidos
proSeq <- AAString("ARNDFGGGIIJJKJHHTYG")
proSeq

# Cómo generar una secuencia de RNA a partir de una de DNA
dna1 <- DNAString("ATCGATCG")
dna1
rna1 <- RNAString(dna1)
rna1

# Cómo generar una secuencia de aminoácidos a partir de una secuencia de DNA/RNA
dna2 <- DNAString("ATCGATCGATAG")
prot1 <- translate(dna2)
prot1

rna2 <- RNAString("AUCGAUCGAUAG")
prot2 <- translate(rna2)
prot2

# Quiero saber cuánto de cada nucleótido/aminoácido hay
alphabetFrequency(dnaSeq)
alphabetFrequency(proSeq)
alphabetFrequency(rnaSeq)

# Me interesa saber la secuencia complementaria de mi secuencia original
comp1 <- complement(dnaSeq)
dnaSeq
comp1

comp2 <- complement(rnaSeq)
rnaSeq
comp2

# Ahora quiero el reverso complementario
rcomp1 <- reverseComplement(dnaSeq)
dnaSeq
rcomp1
fasta

# Leer múltiples secuencias fasta
set1 <- readDNAStringSet("seq_1.txt")
set1$`lcl|J01636.1_cds_AAA24052.1_1 [gene=lacI] [protein_id=AAA24052.1] [location=79..1161] [gbkey=CDS]`
width(set1)

# Podemos hacer cosas como graficar
barplot(letterFrequency(set1, letters = c("A","T","C","G")),
        col = c("pink", "red", "blue", "brown"))

# Ejercicio: Descarga el genoma completo de alguna bacteria en formato fasta

# Ejercicio: Cuál es la secuencia más larga del archivo fasta?

# Ejercicio: Determina el promedio del tamaño de las secuencias

# Ejercicio: Obtén las secuencias reversas complementarias de las primeras 5 secuencias

# Ejercicio: Determina cuántas secuencias son más grandes que 600 nucleótidos pero menores a 1,000

# Ejercicio: Haz un historgrama de la longitud de las secuencias

# Ejercicio: Determina el porcentaje de G y A en la primera secuencia

# Ejercicio: Genera un barplot con ggplot2 que muestre las frecuencias de los nucléotidos en las primeras 10 secuencuias



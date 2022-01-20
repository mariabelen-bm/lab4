#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno02/lab4
#SBATCH -J lab4_mariabelen
#SBATCH --cpus-per-task=4
#SBATCH --mail-type=END	#END/START/NONE
#SBATCH --mail-user=mariabelen.barquerom@um.es

# Affinity
#export KMP_AFFINITY=granularity=fine,compact

# Number of threads
#export OMP_NUM_THREADS=32
#16,32

# Lanzamos a la cola pacioli el ejecutable FileCute-avanzado en paralelo usando 4 procesos para los cuatro ficheros

./file-cut_avanzado.sh Sample1.fastq Sample1_cut.fastq & ./file-cut_avanzado.sh Sample2.fastq Sample2_cut.fastq & ./file-cut_avanzado.sh Sample3.fastq Sample3_cut.fastq & ./file-cut_avanzado.sh Sample4.fastq Sample4_cut.fastq

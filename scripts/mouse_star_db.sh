#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB
conda activate qaa
/usr/bin/time -v STAR --runThreadN 8 --runMode genomeGenerate --genomeDir \
 /projects/bgmp/sgolubev/bioinfo/Bi623/PS/QAA/QAA/genome \
 --genomeFastaFiles \
 /projects/bgmp/sgolubev/bioinfo/Bi623/PS/QAA/QAA/genome/Mus_musculus.GRCm39.dna_sm.primary_assembly.fa \
 --sjdbGTFfile /projects/bgmp/sgolubev/bioinfo/Bi623/PS/QAA/QAA/genome/Mus_musculus.GRCm39.110.gtf
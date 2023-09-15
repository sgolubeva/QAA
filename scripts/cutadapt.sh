#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --cpus-per-task=1                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB

conda activate qaa
/usr/bin/time -v cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT\
 -o /projects/bgmp/sgolubev/bioinfo/Bi623/PS/QAA/QAA/control_R1/3_2B_control_S3_L008_R1_001.acut.fastq \
 -p /projects/bgmp/sgolubev/bioinfo/Bi623/PS/QAA/QAA/control_R2/3_2B_control_S3_L008_R2_001.acut.fastq\
  /projects/bgmp/shared/2017_sequencing/demultiplexed/3_2B_control_S3_L008_R1_001.fastq.gz \
  /projects/bgmp/shared/2017_sequencing/demultiplexed/3_2B_control_S3_L008_R2_001.fastq.gz

 
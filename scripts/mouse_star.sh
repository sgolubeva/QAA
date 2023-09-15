#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB
conda activate qaa
/usr/bin/time -v \
 /usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
 --outFilterMultimapNmax 3 \
 --outSAMunmapped Within KeepPairs \
 --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
 --readFilesCommand zcat \
 --readFilesIn /projects/bgmp/sgolubev/bioinfo/Bi623/PS/QAA/QAA/trim_control/out_fw_paired_3_2B_control_S3_L008_R1_001.acut.fastq.gz \
 /projects/bgmp/sgolubev/bioinfo/Bi623/PS/QAA/QAA/trim_control/out_rv_paired_3_2B_control_S3_L008_R2_001.acut.fastq.gz \
 --genomeDir /projects/bgmp/sgolubev/bioinfo/Bi623/PS/QAA/QAA/genome \
 --outFileNamePrefix aligned/aligned_mouse_control
#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --cpus-per-task=1                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB
conda activate qaa

/usr/bin/time -v trimmomatic PE -threads 20 -phred33 control_R1/3_2B_control_S3_L008_R1_001.acut.fastq.gz \
 control_R2/3_2B_control_S3_L008_R2_001.acut.fastq.gz\
 trim_control/out_fw_paired_3_2B_control_S3_L008_R1_001.acut.fastq.gz \
 trim_control/out_fw_unpaired_3_2B_control_S3_L008_R1_001.acut.fastq.gz \
 trim_control/out_rv_paired_3_2B_control_S3_L008_R2_001.acut.fastq.gz  \
 trim_control/out_rv_unpaired_3_2B_control_S3_L008_R2_001.acut.fastq.gz \
 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35
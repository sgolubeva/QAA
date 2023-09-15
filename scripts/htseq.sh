#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --cpus-per-task=1                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB
conda activate qaa
/usr/bin/time -v htseq-count --stranded=yes aligned_without_trim_cut_ada/aligned_mouse_control_Aligned.out.sam \
 genome/Mus_musculus.GRCm39.110.gtf
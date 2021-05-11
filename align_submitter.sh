#!/bin/bash
#SBATCH --job-name=align_submitter
#SBATCH --nodes=1
#SBATCH --mem=200G
#SBATCH --time=2:00:00
#SBATCH --error=/gpfs/scratch/rv692/ASI/FINAL/LOG/align_sub_error.txt
#SBATCH --output=/gpfs/scratch/rv692/ASI/FINAL/align_sub_stdout.txt

sbatch --array=1 align.sh  uninf-dmso-exp1-fastq Early
sbatch --array=1 align.sh  uninf-dmso-exp4-fastq DMSO
sbatch --array=1 align.sh  uninf-ly-exp4-fastq LY
sbatch --array=1 align.sh  uninf-mirin-exp4-fastq Mirin



#!/bin/bash
#SBATCH --job-name=alignment
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=raveena.vakil@nyulangone.org
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=4
#SBATCH --mem=64G
#SBATCH --time=24:00:00
#SBATCH --output=/gpfs/scratch/rv692/ASI/FINAL/LOG/align_%j.log
#SBATCH -p cpu_short

# Load modules
module load cellranger/5.0.1

# Run count
cellranger count --id=${1} \
--transcriptome=/gpfs/scratch/rv692/ASI/FINAL/rat_ref \
--fastqs=/gpfs/data/courses/bminga3004/FinalProjects/Project1/${1}/ \
--sample=${2}

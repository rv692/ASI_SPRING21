#!/bin/bash
#SBATCH --job-name=ref_build
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=raveena.vakil@nyulangone.org
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=8
#SBATCH --mem=64G
#SBATCH --time=12:00:00
#SBATCH --output=/gpfs/scratch/rv692/ASI/FINAL/LOG/ref_build_%j.log
#SBATCH -p cpu_short

# Load modules
module load cellranger/5.0.1

# Download fasta 
#wget ftp://ftp.ensembl.org/pub/release-102/fasta/rattus_norvegicus/dna/Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa.gz
#gunzip Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa.gz

#Download GTF
#wget ftp://ftp.ensembl.org/pub/release-102/gtf/rattus_norvegicus/Rattus_norvegicus.Rnor_6.0.102.gtf.gz
#gunzip Rattus_norvegicus.Rnor_6.0.102.gtf.gz


#Filter GTF
#cellranger mkgtf Rattus_norvegicus.Rnor_6.0.102.gtf Rattus_norvegicus.Rnor_6.0.102.filtered.gtf  

#--attribute=gene_biotype:protein_coding 

#--attribute=gene_biotype:lincRNA 

#--attribute=gene_biotype:antisense 

#--attribute=gene_biotype:IG_LV_gene 

#--attribute=gene_biotype:IG_V_gene 

#--attribute=gene_biotype:IG_V_pseudogene 

#--attribute=gene_biotype:IG_D_gene 

#--attribute=gene_biotype:IG_J_gene 

#--attribute=gene_biotype:IG_J_pseudogene 

#--attribute=gene_biotype:IG_C_gene 

#--attribute=gene_biotype:IG_C_pseudogene 

#--attribute=gene_biotype:TR_V_gene 

#--attribute=gene_biotype:TR_V_pseudogene 

#--attribute=gene_biotype:TR_D_gene 

#--attribute=gene_biotype:TR_J_gene 

#--attribute=gene_biotype:TR_J_pseudogene 

#--attribute=gene_biotype:TR_C_gene


#Run mkref
cellranger mkref --genome=rat_ref --fasta=Rattus_norvegicus.Rnor_6.0.dna.toplevel.fa --genes=Rattus_norvegicus.Rnor_6.0.102.filtered.gtf


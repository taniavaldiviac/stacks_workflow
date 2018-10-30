#!/bin/bash
#SBATCH -J "populations"
#SBATCH -o log_%j
#SBATCH -c 1
#SBATCH -p small
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=YOUREMAIL
#SBATCH --time=1-00:00
#SBATCH --mem=50G

# Move to directory where job was submitted
cd $SLURM_SUBMIT_DIR

# Create population ouputs (vcf...)
./00-scripts/stacks_4_populations.sh

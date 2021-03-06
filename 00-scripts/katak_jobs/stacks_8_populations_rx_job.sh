#!/bin/bash
#SBATCH -J "rxpopulations"
#SBATCH -o log_%j
#SBATCH -c 1
#SBATCH -p medium
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=YOUREMAIL
#SBATCH --time=2-00:00
#SBATCH --mem=50G

# Move to directory where job was submitted
cd $SLURM_SUBMIT_DIR

# Create population ouputs (vcf...)
./00-scripts/stacks1_8_populations_rx.sh

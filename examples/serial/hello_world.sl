#! /bin/sh
#SBATCH -J hello
#SBATCH -o ${SLURM_JOB_NAME}.out
#SBATCH -e ${SLURM_JOB_NAME}.err
#SBATCH -A XXXXX
#SBATCH --mem=8GB
#SBATCH --time 00:01:00

srun sh hello_work.sh



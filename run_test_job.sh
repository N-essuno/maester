#!/bin/bash
##SBATCH --exclude=nid[005172-005177]
#SBATCH --job-name=test_run
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=56
#SBATCH --mem=0
#SBATCH --partition=standard-g
#SBATCH --time=00:01:00
#SBATCH --gpus-per-node=8
#SBATCH --exclusive=user
#SBATCH --hint=nomultithread
#SBATCH --account=project_465001265
#SBATCH --output=jobs/test_run/logs/%j.out
#SBATCH --error=jobs/test_run/logs/%j.err

# Load necessary modules (if needed)
# module load python/3.9

# Run the Python script
python test_run_slurm.py

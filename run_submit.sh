#!/bin/bash
#SBATCH --job-name=test_run_submit            # Job name
#SBATCH --nodes=8                      # Number of nodes
#SBATCH --ntasks-per-node=1            # Number of tasks per node
#SBATCH --cpus-per-task=56             # CPUs per task
#SBATCH --mem=0                        # Memory per node (use system default)
#SBATCH --partition=standard-g         # Partition to submit to
#SBATCH --time=00:05:00                # Time limit (1 minute)
#SBATCH --gpus-per-node=8              # Number of GPUs per node
#SBATCH --exclusive=user               # Exclusive node allocation
#SBATCH --hint=nomultithread           # Prevent multi-threading
#SBATCH --account=project_465001265    # Project account
#SBATCH --output=jobs/test_run_submit/logs/%j.out  # Output file
#SBATCH --error=jobs/test_run_submit/logs/%j.err  # Error file

# Load necessary modules (if required)
# module load python/3.9

# Activate the virtual environment
# source ../path/to/your/virtualenv/bin/activate  # Adjust this path

# Run the Python script with config.yaml as an argument
srun python submit.py --load_config config_tiny.yaml


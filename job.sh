#!/bin/bash
#SBATCH --job-name          test-abinit
#SBATCH --time              720:00:00
#SBATCH --nodes             1
#SBATCH --ntasks-per-node   24
#SBATCH --mem-per-cpu       120MB
#SBATCH --error             output-%j.error
#SBATCH --output            output-%j.output

# Eliminando los modulos anteriormnente cargados
module purge

# Cargando los modulos necesarios
module load abinit/8.10.3

mpirun abinit < tdfpt_03.files > abinit.log

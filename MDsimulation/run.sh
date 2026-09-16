#!/bin/bash
#$ -cwd
#$ -o jobout.$JOB_ID
#$ -j y
#$ -pe dc* 16
#$ -l h_data=1G,h_rt=300:00:00,highp,exclusive

. /u/local/Modules/default/init/modules.sh
module load intel/2020.4
module load gcc/10.2.0
module load openmpi/4.0.0 

mpirun -np 16 ~/LAMMPS/lmp2022_Mar20_sw < in.GS2.lammps > out.log


#!/bin/tcsh -f
#PBS -N C3D_1_F_SubGroup
#PBS -m abe
#PBS -l walltime=24:00:00
#PBS -l nodes=1:ppn=16
#PBS -k oe
#PBS -l pmem=2gb
#PBS -q gpu

echo ------------------------------------------------------
echo -n 'Job is running on node '; cat $PBS_NODEFILE
echo ------------------------------------------------------
echo PBS: qsub is running on $PBS_O_HOST
echo PBS: originating queue is $PBS_O_QUEUE
echo PBS: executing queue is $PBS_QUEUE
echo PBS: working directory is $PBS_O_WORKDIR
echo PBS: execution mode is $PBS_ENVIRONMENT
echo PBS: job identifier is $PBS_JOBID
echo PBS: job name is $PBS_JOBNAME
echo PBS: node file is $PBS_NODEFILE
echo PBS: current home directory is $PBS_O_HOME
echo PBS: PATH = $PBS_O_PATH
echo ------------------------------------------------------

eval `/usr/bin/modulecmd tcsh load cuda-10.1`

python $PWD/replay.py
echo ------------------------------------------------------
echo Job ends
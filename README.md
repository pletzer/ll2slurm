
Documentation and examples for users wanting to migrate from LoadLeveler to SLURM

## How to access this documentation

``` bash
git clone https://github.com/pletzer/ll2slurm.git
cd ll2slurm.git
```

## Commands

| LoadLeveler          | SLURM                  | What it does                    |
|----------------------|------------------------|---------------------------------|
| llsubmit `<script`>  | sbatch  `<script`>     | submit job                      |
| llq -u `<username`>  | squeue -u `<username`> | check status                    |
| llq `<jobid`>        | sstatus `<jobid`>      | check status                    |
| llcancel `<jobid`>   | scancel `<jobid`>      | kill job                        |
|                      | sinfo                  | show status info about platform |


## Options

| LoadLeveler                               | SLURM                                  | What it means                            |
|-------------------------------------------|----------------------------------------|------------------------------------------|
| #@ job_name `<jobname`>                   | #SBATCH -J `<jobname`>                 | specify the job name                     |
| #@ class = General                        |                                        |                                          |
| #@ group = nesi                           |                                        |                                          |
| #@ notification = never                   |                                        |                                          |
| #@ account_no = `<acct`>                  | #SBATCH -A `<acct`>                    | specify account number                   |
| #@ wall_clock_limit `<hh:mm:ss`>          | #SBATCH --time `<hh:mm:ss`>            | specify wall clock time                  |
| #@ resources = ConsumerableMemory(8gb)    | #SBATCH --mem=8192                     | specify memory requirement per node      |
| #@ job_type `<serial or parallel`>        |                                        |                                          |
| #@ node = `<numnodes`>                    | #SBATCH --nodes `<numnodes`>           | specify number of nodes                  |
| #@ network.MPI = `<network`>              |                                        |                                          |
| #@ tasks_per_nodes = `<numtasks`>         | #SBATCH --ntasks_per_node `<numtasks`> | specify the number of MPI tasks per node |
| #@ parallel_threads = `<numthreads`>      | #SBATCH --cpus_per_task `<numthreads`> | sets OMP_NUM_THREADS=`<numthreads`>      |
| #@ output = $(job_name).$(jobid>).out     | #SBATCH -o %j.%N.out                   | specify standard output file             |
| #@ error = $(job_name).$(jobid>).err      | #SBATCH -e %j.%N.err                   | specify standard error file              |
| #@ queue                                  |                                        |                                          |

## Run commands

| LoadLeveler                               | SLURM                        | What it means                        |
|-------------------------------------------|------------------------------|--------------------------------------|
| export OMP_NUM_THREADS=32                 |                              | specify the number of OpenMP threads |
| `<myexec`>                                | srun `<myexec`>              | serial execution                     |
| poe  `<myexec`>                           | srun `<myexec`>              | parallel execution                   |


## Environment variables

| LoadLeveler                               | SLURM                                  | What it means                            |
|-------------------------------------------|----------------------------------------|------------------------------------------|
| $(jobid)                                  | $SLURM_JOBID                           | job id                                   |
| $(job_name)                               | $SLURM_JOB_NAME                        | job name                                 |
|                                           | $SLURM_JOB_NODELIST                    |                                          |
|                                           | $TMP_DIR                               | local file system                        |
|                                           | $SCRATCH_DIR                           | shared file system                       |
|                                           | $SLURM_SUBMIT_DIR                      | directory where the job was submitted    |

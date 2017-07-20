# ll2slurm
Contains documentation and examples for users wanting to migrate from LoadLeveler to SLURM

## Commands

| LoadLeveler          | SLURM                  | What it does |
|----------------------|------------------------|--------------|
| llsubmit `<script`>  | sbatch  `<script`>     | submit job   |
| llq -u `<username`>  | squeue -u `<username`> | check status |
| llq `<jobid`>        | sstatus `<jobid`>      | check status |
| llcancel `<jobid`>   | scancel `<jobid`>      | kill job     |



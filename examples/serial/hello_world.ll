#! /bin/sh
#@ job_name = hello
#@ output = $(job_name).out
#@ error = $(job_name).err
#@ account_no = XXXXX
#@ class = General
#@ resources = ConsumableMemory(1gb)
#@ job_type = serial 
#@ wall_clock_limit = 00:01:00
#@ queue

sh hello_world.sh

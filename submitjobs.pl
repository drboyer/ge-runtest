#!/usr/bin/perl -w
# Submits jobs to the queue

# get number of jobs from prompt
my $num_jobs = shift;
die "ERROR: Must provide number of jobs to submit!\n" if !defined($num_jobs);

# TODO: You may need to change this directory (and possible create the logs directory)
my $base_dir = "/energystorage/gridengine/ge-runtest";

my $cmd;
for(my $ct = 0; $ct < $num_jobs; $ct++) {
	$cmd = "echo \"perl $base_dir/job.pl\" | qsub -N testjob -o $base_dir/logs -e $base_dir/logs";
	system $cmd;
}

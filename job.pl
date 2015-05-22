#!/usr/bin/perl -w

print `hostname`;

print date() . "Starting job script & sleeping.\n";
sleep 20;
print date() . "Done!\n";

sub date
{
	my $date = `date`;
	chomp $date;
	return "$date: ";
}

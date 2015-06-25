use strict;
use warnings;

sub KillAll{
	foreach my $processVLC ( @_ ){
		chomp($processVLC);	
		#print "$processVLC\n";
		my @proc = split(/\s/, $processVLC);
		print "kill $proc[1]\n";	
		print `kill $proc[1]`;
	}
}

my @currentVLCProcess1 = `ps -eo pid,args | grep "vlc"`;
my @currentVLCProcess2 = `ps -eo pid,args | grep "vlc"`;

KillAll(@currentVLCProcess1);
KillAll(@currentVLCProcess2);


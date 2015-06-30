use strict;
use warnings;

my $musikYT = '../../song/musikYT.muk';
my $programm = 'cvlc --novideo --loop';

sub KillAll{
	foreach my $processVLC ( @_ ){
		chomp($processVLC);	
		#print "$processVLC\n";
		my @proc = split(/\s/, $processVLC);
		print "kill $proc[1]\n";	
		print `kill $proc[0]`;
	}
}

my @currentVLCProcess1 = `ps -eo pid,args | grep "vlc"`;
my @currentVLCProcess2 = `ps -eo pid,args | grep "vlc"`;

KillAll(@currentVLCProcess1);
KillAll(@currentVLCProcess2);

my $currentSong = $ARGV[0];
print "Run new song $currentSong\n";
chomp($currentSong);
my @output = `$programm $currentSong`;

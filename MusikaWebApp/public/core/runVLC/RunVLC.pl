use strict;
use warnings;

my $musikYT = '../../song/musikYT.muk';
my $programm = 'cvlc --novideo --loop';

print "Run new song \n";
my $currentSong = $ARGV[0];
chomp($currentSong);
my @output = `$programm $currentSong`;

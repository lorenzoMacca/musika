use strict;
use warnings;

my $musikYT = '../../song/musikYT.muk';
my $programm = 'cvlc --novideo --loop';

my $currentSong = $ARGV[0];
chomp($currentSong);
my @output = `$programm $currentSong`;

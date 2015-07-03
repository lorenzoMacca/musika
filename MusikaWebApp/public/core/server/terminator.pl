use strict;
use warnings;

open(FILE_YT, $ARGV[0]);
my @fileYt = <FILE_YT>;
my @videosYT = ();
close (FILE_YT);
foreach my $line (@fileYt){
	chomp($line);
	if( $line =~ m/class\=\"yt\-lockup\-content\"/ ){
		if( $line =~ m/\<a href\=\"\/watch\?v\=(.+?)\"/ ){
			my $id = $1;
			print "$1  ";
			if( $line =~ m/title\="(.+?)"/ ){
				print "$1  ";
				if( $line =~ m/img src\="(.+$id.*?)"/ ){
					print "$1\n";	
				}
			}
		}
	}
}

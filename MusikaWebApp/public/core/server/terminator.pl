use strict;
use warnings;

my $htmlFile = 'research';
my @videosYT = ();

print `wget -O $htmlFile https://www.youtube.com/results?search_query=$ARGV[0]`."\n";
my @fileYt = `cat $htmlFile`;

#consts
my $__ID     = 0;
my $__IDYT   = 1;
my $__TITLE  = 2;
my $__imgUrl = 3;

my $i=0;
foreach my $line (@fileYt){
    chomp($line);
    my $find = 0;
    my @tmp;
    if( $line =~ m/class\=\"yt\-lockup\-content\"/ ){
        if( $line =~ m/\<a href\=\"\/watch\?v\=(.+?)\"/ ){
            $find=1;
            $tmp[$__ID] = $i++;
            $tmp[$__IDYT] = $1;
            if( $line =~ m/title\="(.+?)"/ ){
                $tmp[$__TITLE] = $1;
            }
        }
    }
    if ($find==1){
        push(@videosYT, [@tmp]);
    }
}

foreach my $video (@videosYT){
    my $idYT = ${$video}[$__IDYT];
    chomp($idYT);
    foreach my $line (@fileYt){
        if( $line =~ m/\="(\/\/.+$idYT.+\.jpg)"/ ){
                ${$video}[$__imgUrl] = $1;
        }
    }

}

foreach my $video (@videosYT){
    print "${$video}[$__ID] ${$video}[$__IDYT] ${$video}[$__TITLE] ${$video}[$__imgUrl]\n";
} 

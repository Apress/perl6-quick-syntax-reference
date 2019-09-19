#!/usr/bin/env perl6

use v6;

sub deck( Array(Set) \suits, UInt :$how-many = 4, :@cards --> Seq(List) ) {
    
    return (@cards X~  suits.values.map("❖❖" ~ *.key);)[^$how-many];
}

my $palos = set <bastos espadas>;
say deck( $palos, how-many => 4, cards => (1,3,5) );


=output
/"❖❖"/




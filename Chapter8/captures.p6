#!/usr/bin/env perl6

use v6;

sub deck( @suits, UInt $hand = 3, :@cards --> Seq(List) ) {
    
    return (@cards X~  ("❖❖" X~ @suits) )[^$hand];
}

my $capture = \(<Bastos Espadas>, :cards("Sota","Caballo","Rey"));
say deck( |$capture );


=output
(Sota❖❖Bastos Sota❖❖Espadas Caballo❖❖Bastos)





#!/usr/bin/env perl6

use v6;

class Game {
    has Str $.name;
    method score( @deck ) { ... };
}

class Brisca is Game {
    has %!scores = { As => 11,
                     3 => 10,
                     Rey => 4,
                     Caballo => 3,
                     Sota => 2 };
    
    method score( @deck ) {
        my $score = 0;
        for @deck.grep( any %!scores.keys) -> $c {
            $score += %!scores{$c};
        }
        return $score;
    }
}      

class Guiñote is Game {
    has Int $.diez-de-últimas;
    has %!scores = { As => 11,
                     3 => 10,
                     Rey => 4,
                     Caballo => 2,
                     Sota => 3 };
    
    method score( @deck ) {
        my $score = $!diez-de-últimas;
        for @deck.grep( any %!scores.keys)  -> $c {
            $score += %!scores{$c};
        }
        return $score;
    }
}

my @deck = <As 3 7 8 Rey Sota>;

my Game $game1 = Brisca.new: name => 'brisca1' ;
my Game $game2 = Guiñote.new( name => 'Este guiñote', :0diez-de-últimas );

say $game1.score( @deck );
say $game2.score( @deck );

=output
27
28

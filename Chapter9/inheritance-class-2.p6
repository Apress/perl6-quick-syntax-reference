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
    
    method !_score-card( $c ) {
        my %scores = :11As, 3 => 10, :4Rey, :2Caballo, :3Sota;
        return %scores{$c} if $c ~~ any %scores.keys 
    }
    
    method score( @deck ) {
        my $score = $!diez-de-últimas;
        $score += self!_score-card($_) for @deck;
        return $score;
    }
}

my @deck = <As 3 7 8 Rey Sota>;

my Game $game = Brisca.new: name => 'brisca1';
say $game.score( @deck );
$game = Guiñote.new( name => 'Este guiñote', :0diez-de-últimas );
say $game.score( @deck );

=output
27
28

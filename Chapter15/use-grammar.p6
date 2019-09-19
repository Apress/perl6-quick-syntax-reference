#!/usr/bin/env perl6

use v6;
use lib <. Chapter15>;


use Game;

my $game-desc1 = "Alice plays 7♥,Bob plays 8♠";
say Game.parse( $game-desc1, :args(( ",",)) );
$game-desc1 ~~ s/","/|/;
my $match = Game.parse( $game-desc1, :args(( "|",)) );
for $match<hand>.list -> $hand {
    say "Playing→ $hand";
}

=output
｢Alice plays 7♥,Bob plays 8♠｣
 hand => ｢Alice plays 7♥｣
  player => ｢Alice｣
   upper => ｢A｣
   alpha => ｢l｣
   alpha => ｢i｣
   alpha => ｢c｣
   alpha => ｢e｣
  action => ｢plays｣
   alpha => ｢p｣
   alpha => ｢l｣
   alpha => ｢a｣
   alpha => ｢y｣
   alpha => ｢s｣
  card => ｢7♥｣
 hand => ｢Bob plays 8♠｣
  player => ｢Bob｣
   upper => ｢B｣
   alpha => ｢o｣
   alpha => ｢b｣
  action => ｢plays｣
   alpha => ｢p｣
   alpha => ｢l｣
   alpha => ｢a｣
   alpha => ｢y｣
   alpha => ｢s｣
  card => ｢8♠｣
Playing Alice plays 7♥
Playing Bob plays 8♠

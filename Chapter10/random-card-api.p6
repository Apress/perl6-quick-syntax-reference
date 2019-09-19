#!/usr/bin/env perl6

constant URL='https://deckofcardsapi.com/api/deck/';

use WWW;

my $deck-id = jget(URL ~ 'new/shuffle/?deck_count=1')<deck_id>;

say   jget URL ~ "/$deck-id/draw/?count=2";


=output
/cards/

#!/usr/bin/env perl6

use v6;

role Card-values[::T] {
    has Str $.name;
    method one { T.pick };
    method better-than ( T \lhs, T \rhs ) {
        return lhs < rhs;
    };
}

enum french-digits <② ③ ④ J Q K Ace>;
enum spanish-digits <⒉ ⒊ ⒋ Sota Caballo Rey As>;

class French-card-values does Card-values[french-digits] { };
class Spanish-card-values does Card-values[spanish-digits] { };

my $french-cards = French-card-values.new( name => "French" );
say $french-cards.better-than( french-digits::«③», french-digits::«J»);

my $spanish-cards = Spanish-card-values.new( name => "Española" );
say $spanish-cards.better-than( Rey, Sota );


=output
True
False



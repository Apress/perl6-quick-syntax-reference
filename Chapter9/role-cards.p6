#!/usr/bin/env perl6

use v6;

role Card-values {
    has @.values;
    method one { @!values.pick };
    method better-than ( $lhs, $rhs ) {
        return @!values.first( * eq $lhs, :kv )[0] >  @!values.first( * eq $rhs, :kv )[0];
    };
}

my @values = (2..10);
@values = @values.append( <J Q K Ace> );
my $french-values = Card-values.new( :@values );
say $french-values.perl;
say $french-values.better-than( "Ace", 3 );

=output
Card-values.new(values => [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "Ace"])
True



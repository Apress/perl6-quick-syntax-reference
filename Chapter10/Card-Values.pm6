unit class Card-Values;

has @.values;
method one { @!values.pick };
method better-than ( $lhs, $rhs ) {
    return @!values.first( * eq $lhs, :kv )[0] >  @!values.first( * eq $rhs, :kv )[0];
};




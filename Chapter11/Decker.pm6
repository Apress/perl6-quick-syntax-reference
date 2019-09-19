unit class Decker;

has @.cards = 1..10 X~ <♠ ♦ ♣ ♥>;

method !_shuffle {
    @!cards = @!cards.pick: *;
}

submethod TWEAK {
    self!_shuffle; 
}

method draw ( UInt $how-many = 1 ) {
    if ( $how-many > @!cards.elems ) {
	return X::OutOfRange.new( got => $how-many,
				  range => "1.." ~ @!cards.elems).fail
    }
    if @!cards {
        self!_shuffle;
        my @draw = gather {
            for ^$how-many {
                take @!cards.pop
            }
        }
        return @draw.Slip;
    } else {
        return X::OutOfRange.new.fail;
    }
}

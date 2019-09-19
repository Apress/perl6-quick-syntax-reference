unit class Deckeroo;

has @.cards = 1..10 X~ <♠ ♦ ♣ ♥>;

method !_shuffle {
    @!cards = @!cards.pick: *;
}

submethod TWEAK {
    self!_shuffle; 
}

method draw ( UInt $how-many = 1 --> Slip ) {
    if ( ! @!cards.elems ) {
	X::AdHoc.new( payload => "No more cards" ).throw
    }
    if ( $how-many > @!cards.elems ) {
	X::OutOfRange.new( got => $how-many,
			   range => "1.." ~ @!cards.elems).throw
    }
    if @!cards {
        self!_shuffle;
        my @draw = gather {
            for ^$how-many {
                take @!cards.pop
            }
        }
        return @draw.Slip;
    }
}

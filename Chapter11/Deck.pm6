unit class Deck;

has @.cards = 1..10 X~ <♠ ♦ ♣ ♥>;

method !_shuffle {
    @!cards = @!cards.pick: *;
}

submethod TWEAK {
    self!_shuffle; 
}

method draw ( UInt $how-many = 1 --> Slip ) {
     if @!cards {
        self!_shuffle;
        my @draw = gather {
            for ^$how-many {
                take @!cards.pop
            }
        }
        return @draw.Slip;
    } else {
        return [].Slip;
    }
}

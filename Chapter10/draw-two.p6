module Draw-Two {

    our sub draw-two( --> Slip ) {
        state @deck = 1..10 X <♠ ♦ ♣ ♥>;
        if @deck {
            my @shuffle = @deck.pick: *;
            my Slip $draw = (@shuffle.pop, @shuffle.pop).Slip;
            @deck = @shuffle;
            return $draw;
        } else {
            return [].Slip;
        }
        
    }
}

say gather {
    while my $new-draw = Draw-Two::draw-two() {
        given $new-draw {
            .say;
            take $_;
        }
    }
}

=output
/^^"(("/

sub draw-two( --> Slip ) is export {
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

say "loaded";

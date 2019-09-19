unit package Moves-Pro;

sub shuffle( *@deck ) is export {
    @deck.pick( * ).reverse;
}


class Card-Values {

    has @.values is rw is required;
    has $.pintan is rw is default("Bastos") = "Espadas";
    method one() is DEPRECATED { @!values.pick ~ $!pintan } ;
    method draw( $cards = 1 ) { (@!values.pick: $cards ) X~ $!pintan };
}

my Card-Values $cards .= new: values => <As Sota Caballo Rey>;
say $cards.one;
$cards.pintan = Nil;
say $cards.draw;
$cards.values =  ("Ace", 2..10, <J Q K>).flat;
say $cards.draw( 2 );


=output
/"Bastos"/

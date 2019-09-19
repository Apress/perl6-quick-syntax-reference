unit grammar Cards;

token TOP ($separator = ",") { <hand>+ % $separator }
token hand { <player>  \s+ <action> \s+ <card> }
token card   { [ <[1..9]> | "10" | <[AJQK]> ] ["♥" | "♠" | "♣" | "♦"] }
proto token action {*}
token action:sym<plays> { <sym> }
token action:sym<draws> { <sym> }
token action:sym<wins>  { <sym> }
token player { <upper><alpha>+ }

unit grammar Game;

token TOP ($separator) { <hand>+ % $separator }
token hand { <player>  \s+ <action> \s+ <card> }
token card   { [ <[1..9]> | "10" | <[AJQK]> ] ["♥" | "♠" | "♣" | "♦"] }
token action { <alpha>+ }
token player { <upper><alpha>+ }

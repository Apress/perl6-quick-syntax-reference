unit class Cards-Who;

method TOP ($/) { make join("", $/<hand>».made ) }
method hand( $/ ) { make ~$/<player> ~ ' → ' ~ ~$/.<card> ~ "\n" }



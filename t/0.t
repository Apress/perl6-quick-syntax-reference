use Test;
use Test::Script::Output; # -*- mode: perl6 -*-

my @chapters = "Chapter" X~ 7..13;
for @chapters -> $d {
    dir-ok( $d.IO , 'Scripts in dir ' ~ $d ~ ' are OK')
}
done-testing;

#!/usr/bin/env perl6

use v6;

my @to-be-bound = <a b c>;
my @binder := @to-be-bound;
say @binder;
@to-be-bound[1] = 'þ';
say @binder;
@binder[1] = 'p';
say @to-be-bound;
=output
[a b c]
[a þ c]
[a p c]

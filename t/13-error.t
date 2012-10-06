#!/usr/bin/perl -w

use strict;
use Test::More tests => 2;
use Test::Exception;

use Graph::Subgraph;

my $G = Graph->new;

dies_ok {
	$G->subgraph;
} "empty args not ok";
note $@;

dies_ok {
	$G->subgraph(1..5);
} "nonref args not ok";



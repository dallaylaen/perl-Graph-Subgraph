#!/usr/bin/perl -w

use strict;
use Test::More tests => 1;

use Graph::Subgraph;

my $by_hand = Graph->new(directed => 0, vertices => [1..6]);
foreach my $i (1..3) {
	foreach my $j (4..6) {
		$by_hand->add_edge($i, $j);
	};
};

my $K6 = $by_hand->complete;

note explain $K6;

my $K3_3 = $K6->subgraph ([1..3], [4..6]);
note $K3_3;

note $K6;

is ($K3_3, $by_hand, "K3,3: creating edges == subgraph of K6");

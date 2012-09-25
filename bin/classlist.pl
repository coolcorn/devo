#!/usr/bin/perl
use strict;
use warnings;
use v5.10;
use HTML::TreeBuilder;

my $url  = 'https://secure.devotionschool.org/ajax/student?child_id=';
my $file = $ARGV[0];
my $tree = HTML::TreeBuilder->new->parse_file($file) or die "Can't open $file";

for my $kid ( $tree->look_down( class => 'student' ) ) {
    my $name = $kid->as_trimmed_text;
    my ($id) = $kid->attr('id') =~ /^st(.*)$/;
    say "[$name]($url$id)";
}

$tree->delete();

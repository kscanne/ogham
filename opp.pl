#!/usr/bin/perl

use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

my %map = (
	'ᚁ' => '$r[0]--',
	'ᚂ' => '$r[1]--',
	'ᚃ' => '$r[2]--',
	'ᚄ' => '$r[3]--',
	'ᚅ' => '$r[4]--',
	'ᚆ' => '$r[0]++',
	'ᚇ' => '$r[1]++',
	'ᚈ' => '$r[2]++',
	'ᚉ' => '$r[3]++',
	'ᚊ' => '$r[4]++',
	'᚛' => 'do{',
	'᚜' => ';}',
	'ᚋ' => 'while($r[0])',
	'ᚌ' => 'while($r[1])',
	'ᚍ' => 'while($r[2])',
	'ᚎ' => 'while($r[3])',
	'ᚏ' => 'while($r[4])',
	' ' => ';',
	'ᚕ' => ';print "@r\n";exit(0);',
);

sub opp2perl {
	(my $s) = @_;
	$s =~ s/(.)/$map{$1}/eg;
	return $s;
}

my $p;
while (<STDIN>) {
	chomp;
	$p .= $_;
}
print '@r = (0,0,0,0,0);'.opp2perl($p);

exit 0;

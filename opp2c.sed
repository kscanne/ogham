#!/usr/bin/perl

use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

my %map = (
	'ᚁ' => 'a--;',
	'ᚂ' => 'b--;',
	'ᚃ' => 'c--;',
	'ᚄ' => 'd--;',
	'ᚅ' => 'e--;',
	'ᚆ' => 'a++;',
	'ᚇ' => 'b++;',
	'ᚈ' => 'c++;',
	'ᚉ' => 'd++;',
	'ᚊ' => 'e++;',
	'ᚋ' => 'while(a){',
	'ᚌ' => 'while(b){',
	'ᚍ' => 'while(c){',
	'ᚎ' => 'while(d){',
	'ᚏ' => 'while(e){',
	'ᚕ' => 'printf("%d %d %d %d %d\n",a,b,c,d,e);',
);

sub block2c {
	(my $s) = @_;
	(my $inside, my $reg) = $s =~ m/^᚛(.*)᚜([ᚋᚌᚍᚎᚏ])$/;
	return $map{$reg}.opp2c($inside).'}';
}

sub opp2c {
	(my $s) = @_;
	if ($s =~ m/^([^᚛]*)(᚛.*)$/) {
		my $pre = $1;
		my $rest = $2;
		my $block='';
		my $depth = 0;
		my $tail='';
		my $in_tail_p = 0;
		while ($rest =~ m/(.)/g) {
			my $c = $1;
			if ($in_tail_p) {
				$tail .= $c;
			}
			else {
				$block .= $c;
			}
			if ($c =~ m/^[ᚋᚌᚍᚎᚏ]$/) {
				$in_tail_p = 1 if ($depth==0);
			}
			elsif ($c eq '᚛') {
				$depth++;
			}
			elsif ($c eq '᚜') {
				$depth--;
			}
		}
		#print "recursing with pre=$pre, block=$block, tail=$tail\n";
		return opp2c($pre).block2c($block).opp2c($tail);
	}
	else {
		$s =~ s/(.)/$map{$1}/eg;
		return $s;
	}
}

my $p='';
while (<STDIN>) {
	chomp;
	$p .= $_;
}
print "#include <stdio.h>\nint main(){int a=0,b=0,c=0,d=0,e=0;".opp2c($p).'}';

exit 0;

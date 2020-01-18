#!/usr/bin/perl

use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

my %map = (
	'ᚁ' => '-',
	'ᚂ' => '>-<',
	'ᚃ' => '>>-<<',
	'ᚄ' => '>>>-<<<',
	'ᚅ' => '>>>>-<<<<',
	'ᚆ' => '+',
	'ᚇ' => '>+<',
	'ᚈ' => '>>+<<',
	'ᚉ' => '>>>+<<<',
	'ᚊ' => '>>>>+<<<<',
	'ᚕ' => '',
);

sub block2bf {
	(my $s) = @_;
	(my $inside, my $reg) = $s =~ m/^᚛(.*)᚜([ᚋᚌᚍᚎᚏ])$/;
	my $num = ord($reg) - ord('ᚋ');
	my $to = '>'x$num;
	my $from = '<'x$num;
	return $to.'['.$from.opp2bf($inside).$to.']'.$from;
}

sub opp2bf {
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
		return opp2bf($pre).block2bf($block).opp2bf($tail);
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
print opp2bf($p);

exit 0;

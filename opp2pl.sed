#!/usr/bin/perl

use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

my %map = (
	'ᚁ' => '$r[0]--;',
	'ᚂ' => '$r[1]--;',
	'ᚃ' => '$r[2]--;',
	'ᚄ' => '$r[3]--;',
	'ᚅ' => '$r[4]--;',
	'ᚆ' => '$r[0]++;',
	'ᚇ' => '$r[1]++;',
	'ᚈ' => '$r[2]++;',
	'ᚉ' => '$r[3]++;',
	'ᚊ' => '$r[4]++;',
	'ᚕ' => 'print "@r\n";exit(0);',
);

sub block2perl {
	(my $s) = @_;
	(my $inside, my $reg) = $s =~ m/^᚛(.*)᚜([ᚋᚌᚍᚎᚏ])$/;
	my $num = ord($reg) - ord('ᚋ');
	return 'while($r['.$num.']){'.opp2perl($inside).'}';
}

sub opp2perl {
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
		return opp2perl($pre).block2perl($block).opp2perl($tail);
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
print '@r=(0,0,0,0,0);'.opp2perl($p);

exit 0;

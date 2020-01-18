#!/usr/bin/perl

use strict;
use warnings;
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

my %map = (
	'ᚁ' => 'r[0]-=1',
	'ᚂ' => 'r[1]-=1',
	'ᚃ' => 'r[2]-=1',
	'ᚄ' => 'r[3]-=1',
	'ᚅ' => 'r[4]-=1',
	'ᚆ' => 'r[0]+=1',
	'ᚇ' => 'r[1]+=1',
	'ᚈ' => 'r[2]+=1',
	'ᚉ' => 'r[3]+=1',
	'ᚊ' => 'r[4]+=1',
	'ᚕ' => "\nprint(' '.join([str(x) for x in r]))\nexit(0)",
);

sub block2py {
	(my $s, my $indent) = @_;
	(my $inside, my $reg) = $s =~ m/^᚛(.*)᚜([ᚋᚌᚍᚎᚏ])$/;
	my $num = ord($reg) - ord('ᚋ');
	return "${indent}while r[$num]!=0:\n".opp2py($inside,$indent.'  ');
}

sub opp2py {
	(my $s, my $indent) = @_;
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
		return opp2py($pre,$indent).block2py($block,$indent).opp2py($tail,$indent);
	}
	else {
		$s =~ s/(.)/$indent.$map{$1}."\n"/eg;
		return $s;
	}
}

my $p='';
while (<STDIN>) {
	chomp;
	$p .= $_;
}
print "r = [0,0,0,0,0]\n".opp2py($p,'');

exit 0;

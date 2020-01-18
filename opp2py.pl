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
	'᚛' => "while True:\n",
	'᚜' => "\n",
	'ᚋ' => "if r[0]==0:\n",
	'ᚌ' => "if r[1]==0:\n",
	'ᚍ' => "if r[2]==0:\n",
	'ᚎ' => "if r[3]==0:\n",
	'ᚏ' => "if r[4]==0:\n",
	' ' => "\n",
	'ᚕ' => "\nprint(' '.join([str(x) for x in r]))\nexit(0)",
);

sub opp2perl {
	(my $s) = @_;
	my $ans='';
	my $indent='';
	while ($s =~ m/(.)/g) {
		my $c = $1;
		$ans .= $indent.$map{$c};
		if ($c =~ m/^[ᚋᚌᚍᚎᚏ]$/) {
			$ans .= "${indent}  break\n";
			$indent =~ s/^  //;
		}
		elsif ($c eq '᚛') {
			$indent .= '  ';
		}
	}
	return $ans;
}

my $p='';
while (<STDIN>) {
	chomp;
	$p .= $_;
}
print "r = [0,0,0,0,0]\n".opp2perl($p);

exit 0;

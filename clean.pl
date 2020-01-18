#!/usr/bin/perl
use utf8;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

while (<STDIN>) {
	chomp;
	s/[^ᚁᚂᚃᚄᚅᚆᚇᚈᚉᚊ᚛᚜ᚋᚌᚍᚎᚏᚕ]//g;
	print;
}

exit 0;

s/ᚁ/$r[0]--/g
s/ᚂ/$r[1]--/g
s/ᚃ/$r[2]--/g
s/ᚄ/$r[3]--/g
s/ᚅ/$r[4]--/g
s/ᚆ/$r[0]++/g
s/ᚇ/$r[1]++/g
s/ᚈ/$r[2]++/g
s/ᚉ/$r[3]++/g
s/ᚊ/$r[4]++/g
s/᚛/do{/g
s/᚜/;}/g
s/ᚋ/while($r[0])/g
s/ᚌ/while($r[1])/g
s/ᚍ/while($r[2])/g
s/ᚎ/while($r[3])/g
s/ᚏ/while($r[4])/g
s/ /;/g
s/ᚕ/;print "@r\\n";exit(0);/g
s/^/@r=(0,0,0,0,0);/

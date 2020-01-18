s/ᚁ/a--/g
s/ᚂ/b--/g
s/ᚃ/c--/g
s/ᚄ/d--/g
s/ᚅ/e--/g
s/ᚆ/a++/g
s/ᚇ/b++/g
s/ᚈ/c++/g
s/ᚉ/d++/g
s/ᚊ/e++/g
s/᚛/do{/g
s/᚜/;}/g
s/ᚋ/while(a)/g
s/ᚌ/while(b)/g
s/ᚍ/while(c)/g
s/ᚎ/while(d)/g
s/ᚏ/while(e)/g
s/ /;/g
s/ᚕ/;printf("%d %d %d %d %d\\n",a,b,c,d,e);/g
s/^/#include <stdio.h>\nint main(){int a=0,b=0,c=0,d=0,e=0;/
s/$/}/

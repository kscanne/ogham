Ogham++: teanga ríomhchlárúcháin oghmóireachta
----------------------------------------------

Tá an teanga bunaithe ar
[mheaisín tabhall](https://en.wikipedia.org/wiki/Register_machine)
a úsáideann cúig thabhall darb ainm T1, T2, T3, T4, agus T5.
Cuirtear luach 0 i ngach tabhall nuair a thosaíonn an meaisín.

Tacaíonn an teanga leis na horduithe seo a leanas:

|Ordú  |Toradh         |
|----- |---------------|
|ᚆ     |incrimintigh T1|
|ᚇ     |incrimintigh T2|
|ᚈ     |incrimintigh T3|
|ᚉ     |incrimintigh T4|
|ᚊ     |incrimintigh T5|
|ᚁ     |deicrimintigh T1|
|ᚂ     |deicrimintigh T2|
|ᚃ     |deicrimintigh T3|
|ᚄ     |deicrimintigh T4|
|ᚅ     |deicrimintigh T5|
|᚛x᚜ᚋ  |déan x chomh fada is T1 != 0|
|᚛x᚜ᚌ  |déan x chomh fada is T2 != 0|
|᚛x᚜ᚍ  |déan x chomh fada is T3 != 0|
|᚛x᚜ᚎ  |déan x chomh fada is T4 != 0|
|᚛x᚜ᚏ  |déan x chomh fada is T5 != 0|
|x y   |déan x, ansin y|
|ᚕ     |stop an meaisín|


Déantar neamhaird ar aon charachtar eile; mar sin is féidir
nótaí tráchta a chur in aon áit.
Seo thíos cúpla ríomhchlár simplí in Ogham++:

Cuir 4 i T2, cuir 5 i T3, suimigh iad, agus fág an toradh i T2:
```
ᚇ ᚇ ᚇ ᚇ ᚈ ᚈ ᚈ ᚈ ᚈ ᚛ᚇ ᚃ᚜ᚍᚕ
```

Cuir 3 i T2, cuir 6 i T3, iolraigh iad, agus fág an toradh i T2:
```
ᚇ ᚇ ᚇ ᚈ ᚈ ᚈ ᚈ ᚈ ᚈ ᚛ᚉ ᚊ ᚂ᚜ᚌ ᚛᚛ᚇ ᚄ᚜ᚎ ᚃ ᚛ᚆ ᚉ ᚅ᚜ᚏ ᚛ᚊ ᚁ᚜ᚋ᚜ᚍᚕ
```

Creid nó ná creid, tá an teanga seo *Turing-iomlán*.
Féach http://www.iwriteiam.nl/Ha_bf_Turing.html.
Seo meaisín uilíoch Turing bunaithe ar an leagan URM ó
http://www.hevanet.com/cristofd/brainfuck/urmutm.txt
```
᚛ᚃ ᚛ᚉ ᚉ ᚉ ᚉ ᚉ ᚉ ᚃ᚜ᚍ ᚛ᚇ ᚇ ᚁ᚜ᚋ ᚛ᚆ ᚆ ᚆ ᚂ᚜ᚌ ᚛ᚉ ᚅ ᚛ᚉ ᚅ ᚛ᚉ ᚅ ᚛ᚉ ᚅ ᚛ᚉ ᚅ ᚛ᚄ ᚄ ᚄ ᚄ ᚄ ᚈ ᚅ ᚛ᚇ ᚅ᚜ᚏ᚜ᚏ᚜ᚏ᚜ᚏ᚜ᚏ᚜ᚏ ᚛ᚊ ᚂ᚜ᚌ᚜ᚏ ᚛ᚊ ᚃ᚜ᚍ ᚈ ᚇ ᚆ ᚆ ᚆ ᚛ᚄ ᚛ᚂ ᚆ ᚄ ᚛ᚁ ᚁ ᚁ ᚁ ᚄ ᚛ᚇ ᚆ ᚆ ᚄ ᚛ᚈ ᚈ ᚈ ᚂ ᚁ ᚁ ᚄ ᚛ᚃ ᚃ ᚇ ᚆ ᚄ ᚛ᚂ ᚁ ᚄ ᚛ᚈ ᚇ ᚆ ᚆ ᚆ ᚆ ᚄ ᚛ᚃ ᚄ ᚛ᚂ ᚁ ᚄ ᚛ᚁ ᚄ ᚛ᚃ ᚆ ᚆ ᚆ ᚄ ᚛ᚈ ᚈ ᚁ ᚁ ᚁ ᚁ ᚄ ᚛ᚈ ᚆ ᚆ ᚄ ᚛᚛ᚃ᚜ᚍ ᚄ ᚛ᚈ ᚈ ᚈ ᚁ ᚄ ᚛ᚃ ᚃ ᚁ ᚄ ᚛ᚈ ᚇ ᚆ ᚆ ᚆ ᚆ ᚄ ᚛ᚈ ᚈ ᚂ ᚁ ᚁ ᚁ ᚁ ᚁ ᚄ ᚛ᚃ ᚃ ᚇ ᚆ ᚆ ᚆ ᚆ ᚆ ᚄ ᚛ᚈ ᚈ ᚂ ᚁ ᚁ ᚄ ᚄ ᚛ᚁ ᚄ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ ᚛ᚂ ᚛ᚇ ᚇ ᚇ ᚇ ᚇ ᚇ ᚅ᚜ᚏ ᚛ᚇ ᚁ ᚛ᚇ ᚁ ᚛ᚇ ᚁ ᚛ᚇ ᚁ ᚛ᚇ ᚁ ᚛ᚂ ᚂ ᚂ ᚂ ᚂ ᚉ ᚁ ᚛ᚊ ᚁ᚜ᚋ᚜ᚋ᚜ᚋ᚜ᚋ᚜ᚋ᚜ᚋ ᚛ᚆ ᚅ᚜ᚏ᚜ᚋ ᚛ᚊ ᚊ ᚊ ᚊ ᚊ ᚊ ᚂ᚜ᚌ ᚛ᚊ ᚄ ᚛ᚊ ᚄ ᚛ᚊ ᚄ ᚛ᚊ ᚄ ᚛ᚊ ᚄ ᚛ᚅ ᚅ ᚅ ᚅ ᚅ ᚆ ᚄ ᚛ᚇ ᚄ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ ᚛ᚉ ᚂ᚜ᚌ᚜ᚎ᚜ᚌ᚜ᚍᚕ
```

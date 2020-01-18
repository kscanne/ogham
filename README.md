Ogham++: teanga ríomhchlárúcháin oghmóireachta
----------------------------------------------

Tá an teanga bunaithe ar “mheaisín tabhall” a úsáideann
cúig thabhall darb ainm T1, T2, T3, T4, agus T5.
Cuirtear luach 0 i ngach tabhall nuair a thosaíonn an meaisín.

Tacaíonn an teanga leis na horduithe seo a leanas:

|ᚆ     |incrimintigh an luach i dtabhall 1|
|ᚇ     |incrimintigh an luach i dtabhall 2|
|ᚈ     |incrimintigh an luach i dtabhall 3|
|ᚉ     |incrimintigh an luach i dtabhall 4|
|ᚊ     |incrimintigh an luach i dtabhall 5|
|ᚁ     |deicrimintigh an luach i dtabhall 1|
|ᚂ     |deicrimintigh an luach i dtabhall 2|
|ᚃ     |deicrimintigh an luach i dtabhall 3|
|ᚄ     |deicrimintigh an luach i dtabhall 4|
|ᚅ     |deicrimintigh an luach i dtabhall 5|
|᚛x᚜ᚋ  |déan x chomh fada is nach bhfuil 0 i dtabhall 1|
|᚛x᚜ᚌ  |déan x chomh fada is nach bhfuil 0 i dtabhall 2|
|᚛x᚜ᚍ  |déan x chomh fada is nach bhfuil 0 i dtabhall 3|
|᚛x᚜ᚎ  |déan x chomh fada is nach bhfuil 0 i dtabhall 4|
|᚛x᚜ᚏ  |déan x chomh fada is nach bhfuil 0 i dtabhall 5|
|x y   |déan x, ansin y|
|ᚕ     |stop an meaisín|


Seo dhuit cúpla ríomhchlár scríofa in Ogham++:

Cuir 4 i dtabhall 2, cuir 5 i dtabhall 3, suimigh iad, agus fág an toradh i dtabhall 2:
```
ᚇ ᚇ ᚇ ᚇ ᚈ ᚈ ᚈ ᚈ ᚈ ᚛ᚇ ᚃ᚜ᚍᚕ
```

Cuir 3 i dtabhall 2, cuir 6 i dtabhall 3, iolraigh iad, agus fág an toradh i dtabhall 2:
```
ᚇ ᚇ ᚇ ᚈ ᚈ ᚈ ᚈ ᚈ ᚈ ᚛ᚉ ᚊ ᚂ᚜ᚌ  ᚛᚛ᚇ ᚄ᚜ᚎ  ᚃ  ᚛ᚆ ᚉ ᚅ᚜ᚏ  ᚛ᚊ ᚁ᚜ᚋ᚜ᚍ
```

Creid nó ná creid, tá an teanga seo *Turing-iomlán*.
Féach http://www.iwriteiam.nl/Ha_bf_Turing.html.
Seo meaisín uilíoch Turing bunaithe ar an leagan URM ó
http://www.hevanet.com/cristofd/brainfuck/urmutm.txt
```
᚛ᚃ ᚛ᚉ ᚉ ᚉ ᚉ ᚉ ᚉ ᚃ᚜ᚍ ᚛ᚇ ᚇ ᚁ᚜ᚋ ᚛ᚆ ᚆ ᚆ ᚂ᚜ᚌ ᚛ᚉ ᚅ ᚛ᚉ ᚅ ᚛ᚉ ᚅ ᚛ᚉ ᚅ ᚛ᚉ ᚅ ᚛ᚄ ᚄ ᚄ ᚄ ᚄ ᚈ ᚅ ᚛ᚇ ᚅ᚜ᚏ᚜ᚏ᚜ᚏ᚜ᚏ᚜ᚏ᚜ᚏ ᚛ᚊ ᚂ᚜ᚌ᚜ᚏ ᚛ᚊ ᚃ᚜ᚍ ᚈ ᚇ ᚆ ᚆ ᚆ ᚛ᚄ ᚛ᚂ ᚆ ᚄ ᚛ᚁ ᚁ ᚁ ᚁ ᚄ ᚛ᚇ ᚆ ᚆ ᚄ ᚛ᚈ ᚈ ᚈ ᚂ ᚁ ᚁ ᚄ ᚛ᚃ ᚃ ᚇ ᚆ ᚄ ᚛ᚂ ᚁ ᚄ ᚛ᚈ ᚇ ᚆ ᚆ ᚆ ᚆ ᚄ ᚛ᚃ ᚄ ᚛ᚂ ᚁ ᚄ ᚛ᚁ ᚄ ᚛ᚃ ᚆ ᚆ ᚆ ᚄ ᚛ᚈ ᚈ ᚁ ᚁ ᚁ ᚁ ᚄ ᚛ᚈ ᚆ ᚆ ᚄ ᚛᚛ᚃ᚜ᚍ ᚄ ᚛ᚈ ᚈ ᚈ ᚁ ᚄ ᚛ᚃ ᚃ ᚁ ᚄ ᚛ᚈ ᚇ ᚆ ᚆ ᚆ ᚆ ᚄ ᚛ᚈ ᚈ ᚂ ᚁ ᚁ ᚁ ᚁ ᚁ ᚄ ᚛ᚃ ᚃ ᚇ ᚆ ᚆ ᚆ ᚆ ᚆ ᚄ ᚛ᚈ ᚈ ᚂ ᚁ ᚁ ᚄ ᚄ ᚛ᚁ ᚄ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ ᚛ᚂ ᚛ᚇ ᚇ ᚇ ᚇ ᚇ ᚇ ᚅ᚜ᚏ ᚛ᚇ ᚁ ᚛ᚇ ᚁ ᚛ᚇ ᚁ ᚛ᚇ ᚁ ᚛ᚇ ᚁ ᚛ᚂ ᚂ ᚂ ᚂ ᚂ ᚉ ᚁ ᚛ᚊ ᚁ᚜ᚋ᚜ᚋ᚜ᚋ᚜ᚋ᚜ᚋ᚜ᚋ ᚛ᚆ ᚅ᚜ᚏ᚜ᚋ ᚛ᚊ ᚊ ᚊ ᚊ ᚊ ᚊ ᚂ᚜ᚌ ᚛ᚊ ᚄ ᚛ᚊ ᚄ ᚛ᚊ ᚄ ᚛ᚊ ᚄ ᚛ᚊ ᚄ ᚛ᚅ ᚅ ᚅ ᚅ ᚅ ᚆ ᚄ ᚛ᚇ ᚄ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ᚜ᚎ ᚛ᚉ ᚂ᚜ᚌ᚜ᚎ᚜ᚌ᚜ᚍᚕ
```

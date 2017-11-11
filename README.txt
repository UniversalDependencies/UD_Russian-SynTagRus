# Summary

Russian data from the SynTagRus corpus.

# Introduction

The SynTagRus dependency treebank is being developed by the Computational
Linguistics Laboratory, A.A.Kharkevich Institute of Information Transmission
Problems, Russian Academy of Sciences, located in Moscow.

Currently the treebank contains  over 1,000,000 tokens (over 66,000 sentences)
belonging to texts from a variety of genres (contemporary fiction, popular
science, newspaper and journal articles dated between 1960 and 2016, texts of
online news etc.)

The treebank is so far the only human-corrected corpus of Russian supplied
with comprehensive morphological annotation and syntactic annotation in the
form of a complete dependency tree provided for every sentence. Additionally,
the original version of SynTagRus contains other types of annotation, first of
all lexical functional annotation in terms of lexical functions as defined
in the Meaning-Text model.

It is an integral but fully autonomous part of the Russian National Corpus
developed in a nationwide research project and can be freely consulted on the
Web: http://www.ruscorpora.ru/instruction-syntax.html

For more details, see the recently published paper (in Russian):

Дяченко П.В., Иомдин Л.Л., Лазурский А.В., Митюшин Л.Г., Подлесская О.Ю.,
Сизов В.Г., Фролова Т.И., Цинман Л.Л. Современное состояние глубоко
аннотированного корпуса текстов русского языка (СинТагРус) // Сборник
«Национальный корпус русского языка: 10 лет проекту». Труды Института русского
языка им. В.В. Виноградова. М., 2015. Вып. 6. С. 272-299.


#Changelog

*2017-03-01 v2.1
  * Conversion rules for syntax completely rewritten
  * PROPN distinguishing from NOUN improved
  * csubj added
  * Elliptic constructions fixed
  * MWE fixed

*2017-03-01 v2.0
  * Converted to UD v2 guidelines.
  * Elliptic constructions added.
  * Compounds added.

*2016-11-15 v1.4
  * Fixed peculiar Latin/Cyrillic encoding errors.
  * Lemmas are now lowercased as in other treebanks.
  * PROPN distinguished from NOUN, using heuristics based on upper/lowercase.
  * Added "foreign" dependencies.


=== Machine-readable metadata =================================================
Data available since: UD v1.3
License: CC BY-NC-SA 4.0
Includes text: yes
Genre: news nonfiction fiction
Lemmas: converted from manual
UPOS: converted from manual
XPOS: not available
Features: converted from manual
Relations: converted from manual
Contributors: Droganova, Kira; Lyashevskaya, Olga; Zeman, Daniel
Contributing: elsewhere
Contact: zeman@ufal.mff.cuni.cz, droganova@ufal.mff.cuni.cz
===============================================================================
Data contributors: Droganova, Kira; Lyashevskaya, Olga; Zeman, Daniel
Documentation contributors: Shakurova, Lena; Mustafina, Nina

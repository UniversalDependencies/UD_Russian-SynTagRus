Russian data from the SynTagRus corpus.

=== Machine-readable metadata =================================================
Documentation status: partial
Data source: semi-automatic
Data available since: UD v1.3
License: CC BY-NC-SA 4.0
Genre: news nonfiction fiction
Contributors: Droganova, Kira; Lyashevskaya, Olga; Zeman, Daniel; Shakurova, Lena; Mustafina, Nina
Contact: zeman@ufal.mff.cuni.cz
===============================================================================
Data contributors: Droganova, Kira; Lyashevskaya, Olga; Zeman, Daniel
Documentation contributors: Shakurova, Lena; Mustafina, Nina


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


The UD-style corpus inherited some peculiarities during the conversion
process:

1. Elliptic constructions and sentences with foreign (non-Russian) words
   represented in SynTagRus were omitted.

2. In the SynTagRus corpus, certain multiword expressions are represented as
   single tokens. The UD-style corpus contains these tokens as well, but
   spaces have been replaced with '_' ("что_ни_на_есть", "хотя_бы"). This is
   a temporary solution. Such tokens will be replaced with series of separate
   tokens connected with mwe relation in the next release.


Changelog

2016-11-15 v1.4
  * Fixed peculiar Latin/Cyrillic encoding errors.
  * Lemmas are now lowercased as in other treebanks.
  * PROPN distinguished from NOUN, using heuristics based on upper/lowercase.
  * Added "foreign" dependencies.

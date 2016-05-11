Russian data from the Syntagrus corpus.

=== Machine-readable metadata =================================================
Documentation status: partial
Data source: semi-automatic
Data available since: UD v1.3
License:
Genre: news nonfiction fiction
Contributors: Droganova, Kira; Lyashevskaya, Olga; Zeman, Daniel; Shakurova, Lena; Mustafina, Nina
===============================================================================
Data contributors: Droganova, Kira; Lyashevskaya, Olga; Zeman, Daniel
Documentation contributors: Shakurova, Lena; Mustafina, Nina

The Syntagrus dependency treebank is being developed by the Computational
Linguistics Laboratory, Institute of Information Transmission Problems,
Russian Academy of Sciences.

Currently the treebank contains over 66,000 sentences belonging to texts from
a variety of genres (contemporary fiction, popular science, newspaper and
journal articles dated between 1960 and 2008, texts of online news etc.)

The treebank is so far the only corpus of Russian supplied with comprehensive
morphological annotation and syntactic annotation in the form of a complete
dependency tree provided for every sentence.

It is an integral but fully autonomous part of the Russian National Corpus
developed in a nationwide research project and can be freely consulted on the
Web: http://www.ruscorpora.ru/instruction-syntax.html.


The UD-style corpus inherited some peculiarities during the conversion
process:

1. Elliptic constructions represented in Syntagrus were omitted.
Sentencies with foreign words were omitted as well.

2. In the Syntagrus corpus multiword expressions are represented as single
tokens. The UD-style corpus contains those tokens as well, but spaces were
replaced with '_' ("что_ни_на_есть", "хотя_бы"). This is a temporary solution.
Such tokens will be replaced with series of separate tokens connected with mwe
relation in the next release.

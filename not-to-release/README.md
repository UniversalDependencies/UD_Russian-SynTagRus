## 2020-02-18 (uploaded 2020-05-03): A manually corrected version of UD Russian SynTagRus

Within the framework of GramEval 2020, a shared task on Russian full morphology tagging, lemmatization, and dependency parsing,
the manually corrected vesion of SynTagRus UD v.2.5 was issued. A primary motivation was to create a UDv2-valid treebank and
to improve annotation of the core verb arguments. A full list of corrections is listed
[here](https://github.com/dialogue-evaluation/GramEval2020/issues/8).

Levels of change:

* tokenisation
* LEMMA
* UPOS
* FEAT
* HEAD
* DEPREL

GramEval2020-SynTagRus treebank in the GramEval 2020 [repository](https://raw.githubusercontent.com/dialogue-evaluation/GramEval2020/master/dataTrain/GramEval2020-SynTagRus-train-v2.conllu).

* 61889 sentences, 1105849 words, no empty nodes
* Full overlap with the texts of UD Russian SynTagRus up to release 2.8
* However, enhanced graphs are missing
* Data not valid: missing sent\_id and text, unknown feature Hyph, non-projective punctuation


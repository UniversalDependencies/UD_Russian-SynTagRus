#!/usr/bin/env perl
# Reads a SynTagRus CoNLL-U file, adds document ids based on sentence ids, and
# splits it to training, development and test part, keeping whole documents
# together and trying to get as close as possible to 80:10:10 % of regular nodes.
# Copyright © 2021 Dan Zeman <zeman@ufal.mff.cuni.cz>
# License: GNU GPL

use utf8;
use open ':utf8';
binmode(STDIN, ':utf8');
binmode(STDOUT, ':utf8');
binmode(STDERR, ':utf8');

open(TRAIN, '>train.conllu') or die("Cannot write train.conllu: $!");
open(DEV, '>dev.conllu') or die("Cannot write dev.conllu: $!");
open(TEST, '>test.conllu') or die("Cannot write test.conllu: $!");
my $last_docid;
my @sentence = ();
my $target = 'train';
# Number of sentences in train, dev, test.
# We can initialize it with the numbers that were already released in the past.
my %nsent =
(
    'train' => 48814,
    'dev'   =>  6584,
    'test'  =>  6491
);
while(<>)
{
    # We assume that the sentence id line is the first line of each input
    # sentence. (This is not a general UD requirement, and we will also
    # violate it on the output, where we will print the newdoc line first.)
    if(scalar(@sentence) == 0)
    {
        if(m/^\#\s*sent_id\s*=\s*(\S+)$/)
        {
            my $sid = $1;
            my $docid = $sid;
            $docid =~ s/\.xml_\d+$//;
            if(!defined($last_docid) || $last_docid ne $docid)
            {
                # This sentence belongs to a new document, different from the previous sentence.
                push(@sentence, "\# newdoc id = $docid\n");
                $last_docid = $docid;
                # Decide the target data part for this document.
                my $nsent = $nsent{train} + $nsent{dev} + $nsent{test};
                my $trprc = ($nsent{train} / $nsent * 100);
                my $dvprc = ($nsent{dev} / $nsent * 100);
                my $tsprc = ($nsent{test} / $nsent * 100);
                my $trprcc = $trprc / 80;
                my $dvprcc = $dvprc / 10;
                my $tsprcc = $tsprc / 10;
                # The part that has proportionally the biggest deficite will get the next document.
                if($trprcc < $dvprcc && $trprcc < $tsprcc)
                {
                    $target = 'train';
                }
                elsif($dvprcc < $trprcc && $dvprcc < $tsprcc)
                {
                    $target = 'dev';
                }
                else
                {
                    $target = 'test';
                }
                printf STDERR ("train %.1f dev %.1f test %.1f => document $docid goes to $target\n", $trprc+0.05, $dvprc+0.05, $tsprc+0.05);
            }
        }
        else
        {
            print STDERR ($_);
            die("The first line of a sentence is not the sentence id");
        }
    }
    push(@sentence, $_);
    # An empty line terminates a sentence.
    if(m/^\s*$/)
    {
        if($target eq 'train')
        {
            print TRAIN (join('', @sentence));
        }
        elsif($target eq 'dev')
        {
            print DEV (join('', @sentence));
        }
        else
        {
            print TEST (join('', @sentence));
        }
        $nsent{$target}++;
        @sentence = ();
    }
}
close(TRAIN);
close(DEV);
close(TEST);
#!/usr/bin/env perl
use utf8;
use open ":utf8";
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
while(<>)
{
    s/\r?\n$//;
    if(m/^\s*$/) {$_ = ""}
    else
    {
        my @f=split(/\t/,$_);
        # FORM must not contain whitespace (including the non-breaking space, chr(160)).
        my $nbsp = chr(160);
        $f[1] =~ s/[\s$nbsp]/_/g;
        if($f[2] =~ m/^\s*$/ || $f[2] eq chr(160)) { $f[2] = "_"; }
        $f[3] =~ s/^NID$/X/;
        if($f[4] =~ m/^\s*$/) { $f[4] = "_"; }
        if($f[5] eq $f[3] || $f[5] =~ m/^\s*$/) { $f[5]="_" }
        $f[5] =~ s/Variant=brev/Variant=Brev/;
        $f[5] =~ s/^(МЕТА|НЕСТАНД|S|НЕПРАВ)$/_/;
        $f[7] =~ s/^ROOT$/root/;
        $f[7] =~ s/^(сравнит|предл|дат-сент)$/dep/;
        $_=join("\t",@f);
    }
    $_ .= "\n";
    print;
}

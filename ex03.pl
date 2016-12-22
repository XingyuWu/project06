#!/usr/bin/perl -w
use strict;
use warnings;
my $dna='CGACGTTCA';
my $protein='';
my $codon;
for(my $i=0;$i<(length($dna) - 2);$i +=3)
{
$codon=substr($dna,$i,3);
$protein .=codon2aa($codon);
}
print"I translated the DNA\n\n$dna\n\n  into the protein\n\n$protein\n\n";
exit;
sub codon2aa
{
my($codon) = @_;
$codon = uc $codon;
my(%genetic_code) = 
(
CGA => 'R',
CGT => 'R',
TCA => 'S',
);
if(exists $genetic_code{$codon}) 
{return $genetic_code{$codon};}
else
{
print STDERR "Bad codon \"$codon\"!!\n";
exit;
}
}

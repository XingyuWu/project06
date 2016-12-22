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
if($codon =~ /CGA/i) {return 'R'}
elsif($codon =~ /CGT/i) {return 'R'}
elsif($codon =~ /TCA/i) {return 'S'}
else{print STDERR "Bad codon \"$codon\"!!\n";exit;}
}  

#! /usr/bin/perl
# DNAcoder.pl

open FILE, "<DNA.txt" or die $!;
open OUT, ">CODEDDNA.txt" or die $!;

while ($line = <FILE>)
{
	$count = 0;
	chomp;
	@strA = split (/(.)/, $line);
	
	for (@strA)
	{	
		if ($strA[$count] eq "T")
		{
			print OUT "00";
		}
		elsif ($strA[$count] eq "C")
		{
			print OUT "01";
		}
		elsif ($strA[$count] eq "A")
		{
			print OUT "10";
		}
		elsif ($strA[$count] eq "G")
		{
			print OUT "11";
		}
		$count++;
	}
	print OUT "\n";
}
#! /usr/bin/perl
# DNAsequencer.pl

open FILE, "<DNA.txt" or die $!;

while ($line = <FILE>)
{
	$count = 0;
	chomp;
	@Codons = split (/(...)/, $line);

	for (@Codons)
	{
		if ($Codons[$count] =~ /GCT|GCC|GCA|GCG/)
		{
			print "(Ala/A), ";
		}
		elsif ($Codons[$count] =~ /CGT|CGC|CGA|CGG|AGA|AGG/)
		{
			print "(Arg/R), ";
		}
		elsif ($Codons[$count] =~ /AAT|AAC/)
		{
			print "(Asn/N), ";
		}
		elsif ($Codons[$count] =~ /GAT|GAC/)
		{
			print "(Asp/D), ";
		}
		elsif ($Codons[$count] =~ /TGT|TGC/)
		{
			print "(Cys/C), ";
		}
		elsif ($Codons[$count] =~ /CAA|CAG/)
		{
			print "(Gln/Q), ";
		}
		elsif ($Codons[$count] =~ /GAA|GAG/)
		{
			print "(Glu/E), ";
		}
		elsif ($Codons[$count] =~ /GGT|GGC|GGA|GGG/)
		{
			print "(Gly/G), ";
		}
		elsif ($Codons[$count] =~ /CAT|CAC/)
		{
			print "(His/H), ";
		}
		elsif ($Codons[$count] =~ /ATT|ATC|ATA/)
		{
			print "(Ile/I), ";
		}
		elsif ($Codons[$count] =~ /ATG/)
		{
			print "START,   ";
		}
		elsif ($Codons[$count] =~ /TTA|TTG|CTT|CTC|CTA|CTG/)
		{
			print "(Leu/L), ";
		}
		elsif ($Codons[$count] =~ /AAA|AAG/)
		{
			print "(Lys/K), ";
		}
		elsif ($Codons[$count] =~ /ATG/)
		{
			print "(Met/M), ";
		}
		elsif ($Codons[$count] =~ /TTT|TTC/)
		{
			print "(Phe/F), ";
		}
		elsif ($Codons[$count] =~ /CCT|CCC|CCA|CCG/)
		{
			print "(Pro/P), ";
		}
		elsif ($Codons[$count] =~ /TCT|TCC|TCA|TCG|AGT|AGC/)
		{
			print "(Ser/S), ";
		}
		elsif ($Codons[$count] =~ /ACT|ACC|ACA|ACG/)
		{
			print "(Thr/T), ";
		}
		elsif ($Codons[$count] =~ /TGG/)
		{
			print "(Trp/W), ";
		}
		elsif ($Codons[$count] =~ /TAT|TAC/)
		{
			print "(Tyr/Y), ";
		}
		elsif ($Codons[$count] =~ /GTT|GTC|GTA|GTG/)
		{
			print "(Val/V), ";
		}
		elsif ($Codons[$count] =~ /TAA|TGA|TAG/)
		{
			print "    STOP.";
		}
		$count++;
	}
	print "\n";
}

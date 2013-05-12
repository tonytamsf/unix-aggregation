#!/usr/bin/perl -w

my %H_count = ();
my %H_total = ();
my $S_reg = shift;

my $S_pat;
while (<>) {
  $S_pat = 'all';
  chomp($_);

  my $S_num = $_;
  $S_num =~ s/^\s*(\d+)\D.*/$1/g;
  if (defined($S_reg) && /$S_reg/)
  {
    $S_pat = $_;
    if (defined($1))
    {
      my $S_pat = $1;
    } 
  }
  $H_count{$S_pat}++;
  $H_total{$S_pat}+= $S_num;
}

foreach my $S_cat (sort {$H_total{$a} <=> $H_total{$b}} keys(%H_count))
{
  print "$S_cat : ",$H_total{$S_cat}/$H_count{$S_cat},"\n";
}

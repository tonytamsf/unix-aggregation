#!/home/y/bin/perl -w

my %H_count = ();
my %H_total = ();
while (<>) {
  chomp($_);
  my ($S_cat, $S_avg) = split(":", $_);
  chomp($S_cat);
  chomp($S_avg);
  if ($S_avg < 0)
  {
    next;
  }
  $H_count{$S_cat}++;
  $H_total{$S_cat}+= $S_avg;
}

foreach my $S_cat (sort {$H_total{$a} <=> $H_total{$b}} keys(%H_count))
{
  print "$S_cat : ",$H_total{$S_cat}/$H_count{$S_cat},"\n";
}

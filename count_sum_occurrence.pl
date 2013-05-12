#!/home/y/bin/perl -w

use strict;
my %H_count;
while (<>)
{
  chomp();
  my ($S_count, $S_key) = m/^(\d+)\s*=\s*(.*)/;
  $H_count{$S_key} += $S_count;
}

foreach my $S_key (sort {$H_count{$b} <=> $H_count{$a}} keys %H_count)
{
  print "$H_count{$S_key} = $S_key\n";
}

#!/usr/bin/perl -w
my $S_num = 0;
my $S_count = 0;
while (<>) {
  chomp($_);
  $_ =~ s/\s+//g;

  next unless($_ =~ /[\d\.]/);

  $S_num += $_;
  $S_count ++;
  print "$_\n";
}
if ($S_count > 0) {
    print $S_num / $S_count, "\n";
}

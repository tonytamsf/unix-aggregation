#!/usr/bin/perl -w

while (<>) {
  chomp($_);
  $_ =~ s/(\d+)\D.*/$1/g;
  next unless($_ =~ /\d/);
  $sum+=$_;
}
print $sum,"\n";

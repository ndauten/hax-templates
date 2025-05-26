#!/usr/bin/env perl
use strict;
use warnings;
use Getopt::Long;

# Command-line arguments
my $input = '';
my $verbose = 0;
GetOptions(
    'input=s'  => \$input,
    'verbose'  => \$verbose,
) or die "Usage: $0 --input <file> [--verbose]\n";

die "Input file required\n" unless $input;

# Example hash usage
my %data = (
    name => 'Nathan',
    age  => 42,
);

# Function
sub process_line {
    my ($line) = @_;
    chomp $line;
    return uc($line);  # uppercase transformation
}

# File processing
open my $fh, '<', $input or die "Can't open $input: $!";
while (my $line = <$fh>) {
    print process_line($line), "\n" if $verbose;
}
close $fh;

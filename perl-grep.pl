#!/usr/bin/env perl
#
# template.pl — Line processor with optional regex regexing
#
# Usage:
#   ./template.pl [--input FILE] [--regex regex]
#   cat file.txt | ./template.pl --regex error
#
# Description:
#   Reads lines from a file or stdin. If --regex is provided, only processes
#   lines that contain the subregex. Otherwise, acts like 'cat'.
#   The transformation logic is defined in the `process_line` function.
#

use strict;
use warnings;
use Getopt::Long;

my ($input, $regex, $help);
GetOptions(
    'input=s' => \$input,
    'regex=s' => \$regex,
    'help'    => \$help,
);

# Fallback: use first positional arg if --input not provided
$input = shift @ARGV unless defined $input;

# Default to stdin if no input given
@ARGV = defined $input ? ($input) : ('-');

# Default to stdin if no input given
$regex = '.*' unless defined $regex;

# Compile the regex safely
# This is the Perl equivalent of try-catch: eval catches any compilation error
my $match;
eval {
    $match = qr/$regex/;
    #s/$match/$replace/g; TODO: add sedlike
    print "Using pattern: $match compiled from $regex\n";
} or do {
    die "Invalid regex pattern '$regex': $@\n";
};

# Print the HELP!
if ($help) {
    print <<'USAGE';
Usage: template.pl [--input FILE] [--regex regex]

Options:
  --input   File to read from (optional; defaults to STDIN)
  --regex  Subregex to regex (optional; defaults to regex all lines)
  --help    Show this message

Examples:
  ./template.pl --input file.txt
  ./template.pl --input file.txt --regex error
  cat file.txt | ./template.pl --regex warning
USAGE
    exit 0;
}

# Your processing function
sub process_line {
    my ($line, $match) = @_;
    #chomp $line; -- but we are *grep-like here*
    #$line =~ s/foo/bar/g;  # TODO: add sedlike ransformation
    # standard pattern match method
    if ($line =~ $match) {
        # Optional so some other stuff
        print $line;
    }
}

# Main loop
while (<>) {
    process_line($_, $match);
}


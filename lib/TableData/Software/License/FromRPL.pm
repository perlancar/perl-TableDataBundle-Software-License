package TableData::Software::License::FromRPL;

use strict;

use Role::Tiny::With;
with 'TableDataRole::Source::CSVInDATA';

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: List of software license from Regexp::Pattern::License

=head1 SEE ALSO

=cut

__DATA__
# COMMAND: echo "name,summary"; perl -MRegexp::Pattern::License -E'$re=\%Regexp::Pattern::License::RE; my @rows; for my $key (sort keys %$re) { my %row; my $rec = $re->{$key}; next unless $rec->{name} && $rec->{caption}; $row{name} = $rec->{name}; $row{caption} = $rec->{caption}; $row{name} =~ s/"/""/g; $row{caption} =~ s/"/""/g; printf qq("%s","%s"\n), $row{name}, $row{caption} }'

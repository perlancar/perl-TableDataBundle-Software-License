package TableData::Software::License::FromSL;

use strict;

use Role::Tiny::With;
with 'TableDataRole::Source::CSVInDATA';

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: List of software license from Software::License::* modules

=head1 SEE ALSO

=cut

__DATA__
# COMMAND: echo "name,summary"; lcpan mods -l --namespace Software::License --format csv | csv-grep - -He 'return 0 if $_->{module} eq "Software::License" || $_->{module} =~ /::(or_later|None|Custom|CCpack)$/ || $_->{abstract} =~ /pseudo/ || $_->{abstract} !~ /\S/; 1' | csv-munge-row - -He '$_->{module} =~ s/Software::License:://' | csv-select-fields - module abstract --no-output-header

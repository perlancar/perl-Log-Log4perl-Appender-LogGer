package Log::Log4perl::Appender::LogGer;

# DATE
# VERSION

use strict;
use warnings;
use Log::ger;

our @ISA = qw(Log::Log4perl::Appender);

sub new {
    my($class, @options) = @_;

    my $self = {
        @options,
    };

    bless $self, $class;
}

sub log {
    my($self, %params) = @_;

    #use DD; dd \%params;

    my $message = $params{message};
    my $level = $params{level};
    if ($level == 0) {
        log_debug $message;
    } elsif ($level <= 1) {
        log_info $message;
    } elsif ($level <= 3) {
        log_warn $message;
    } elsif ($level <= 6) {
        log_error $message;
    } else {
        log_fatal $message;
    }
}

1;

1;
# ABSTRACT: Log to Log::ger

=for Pod::Coverage ^(.+)$

=head1 SYNOPSIS


=head1 DESCRIPTION


=head1 SEE ALSO

L<Log::ger>

L<Log::Log4perl>

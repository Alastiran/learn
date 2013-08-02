package JustinPen;
use strict;
use warnings;
use parent 'Class::Accessor::Lite';

__PACKAGE__->mk_accessors(qw(length color));

sub new {
	my ($class, %args) = @_;

	my $self = bless {
		length => 10,
	}, $class;

	$self;
}

1;

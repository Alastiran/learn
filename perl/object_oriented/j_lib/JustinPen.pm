#package JustinObj '1.2.4';
package JustinObj;
use strict;
use warnings;
use mro 'c3';
#use parent qw(Class::Accessor::Lite Dictionary);
use parent qw(Dictionary);

#__PACKAGE__->mk_accessors(qw(length color));

#use version;
#our $VERSION = version->new(1.4.5.8);
our $VERSION = 'v1.5.2';

our $Circulation = 0;

sub circulation { return $Circulation }
sub DESTROY { $Circulation-- }

sub new {
	my ($class, %args) = @_;

	$Circulation++;
	my $self = bless {
		length => 10,
	}, $class;

	$self;
}

sub length {
	my $self = shift;
	if (@_) { $self->{length} = shift }
	return $self->{length};
}

sub color {
	my $self = shift;
	my $field = __PACKAGE__ . '::color';
	if (@_) { $self->{$field} = shift }
	return $self->{$field};
}

sub entry {
	my $self = shift;

	print "this is jpen class entry\n";
	$self->next::method(@_);
}

sub style : lvalue {
	my $self = shift;
	$self->{style};
}


my $da_vinci = sub {
	my $self = shift;

	print "da vinci is creator\n";
};

sub declare {
	my $self = shift;
	$self->$da_vinci;
}

use Carp;
sub AUTOLOAD { #one way of working with accessors
	my $self = shift;
	croak "$self not an object" unless ref($self);
	my $name = our $AUTOLOAD;

	unless (exists $self->{$name}) {
		croak "cant access $name in $self";
	}

	if (@_) { return $self->{$name} = shift }
	return $self->{$name};
}

1;

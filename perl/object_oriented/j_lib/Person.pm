package Person;
sub new {
	my $invocant = shift;
	my $class = ref($invocant) || $invocant;
	my $data = {
		NAME => 'unnamed',
		RACE => 'unknown',
		ALIASES => [],
	};
	my $self = sub {
		my $field = shift;
		########################
		### ACCESS CHECKS HERE #
		########################
		if (@_) { $data->{$field} = shift }
		return $data->{$field};
	};
	bless $self, $class;
	return $self;
}

#gen method names
for my $field (qw(name race aliases)) {
	no strict 'refs';
	*$field = sub {
		my $self = shift;
		return $self->(uc $field, @_)
	};
}

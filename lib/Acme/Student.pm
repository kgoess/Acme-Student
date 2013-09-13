=head1 NAME

Acme::Student - Objects representing students

=head1 SYNOPSIS

  use Acme::Student;

  $student = Acme::Student->new( 'susan', [ 'Econ 101', 'Buddhism 101'[ );

=head1 DESCRIPTION

This is an object representing a student.  Two members are 'name' and 'courses'.


=cut

package Acme::Student;

use 5.014002;
use strict;
use warnings;


our $VERSION = '0.01';

sub new {
	my ($class, $name, $courses_arrayref) = @_;

	my $self = {};  # an empty, anonymous hash

	$self->{name} = $name;

	$self->{courses} = $courses_arrayref;

	bless $self, $class;

	return $self;
}


=head2 get_courses

Returns a listref of all the student's courses.

=cut

sub get_courses {
	my ($self) = @_;

	return $self->{courses};

}

=head2  get_course_for_period

When called like $student->get_course_for_period(3) will return
the course in the fourth slot (base zero).

=cut
sub get_course_for_period {
	my ($self, $period) = @_;

	my @courses = $self->{courses};

	return $courses[$period];
}



1;



=head1 SEE ALSO

perldoc perldsc (data structures cookbook)

perldoc perlref (references and nested data structures)


=head1 AUTHOR

Kevin Goess, E<lt>kgoess@bepress.com<gt>


=cut


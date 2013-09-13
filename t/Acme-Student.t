# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Acme-Student.t'

#########################

use strict;
use warnings;

use Test::More tests => 4;
use Data::Dump qw/dump/;

BEGIN { use_ok('Acme::Student') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.


my $susan = Acme::Student->new(
		'susan', 
		('Econ 101', 'Buddhism 300', 'Ontology Seminar' )
	 );

# use this to dump the structure to stderr
#dump $susan;

is $susan{name}, 'susan';  

is_deeply $susan->get_courses, [ 'Econ 101', 'Buddhism 300', 'Ontology Seminar' ];
#   Failed test at t/Acme-Student.t line 30.
#     Structures begin differing at:
#          $got = 'Econ 101'
#     $expected = ARRAY(0xce1380)


is $susan->get_course_for_period( 2 ), 'Ontology Seminar';
#   Failed test at t/Acme-Student.t line 37.
#          got: undef
#     expected: 'Ontology Seminar'


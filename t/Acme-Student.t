# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Acme-Student.t'

#########################

use strict;
use warnings;

use Test::More tests => 1;
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

is $susan->get_course_for_period( 2 ), 'Ontology Seminar';

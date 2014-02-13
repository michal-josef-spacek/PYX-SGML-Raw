# Pragmas.
use strict;
use warnings;

# Modules.
use File::Object;
use PYX::Write::Raw;
use Test::More 'tests' => 4;
use Test::NoWarnings;
use Test::Output;

# Directories.
my $data_dir = File::Object->new->up->dir('data');

# Test.
my $obj = PYX::Write::Raw->new;
stdout_is(
	sub {
		$obj->parse_file($data_dir->file('start_tag1.pyx')->s);
		return;
	},
	'<tag',
);

# Test.
$obj = PYX::Write::Raw->new;
stdout_is(
	sub {
		$obj->parse_file($data_dir->file('start_tag2.pyx')->s);
		return;
	},
	'<tag par="val"',
);

# Test.
$obj = PYX::Write::Raw->new;
stdout_is(
	sub {
		$obj->parse_file($data_dir->file('start_tag3.pyx')->s);
		return;
	},
	'<tag par="val\nval"',
);

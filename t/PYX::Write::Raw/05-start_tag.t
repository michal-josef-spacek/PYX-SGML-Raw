# Pragmas.
use strict;
use warnings;

# Modules.
use File::Object;
use PYX::Write::Raw;
use Test::More 'tests' => 3;

# Directories.
my $data_dir = File::Object->new->up->dir('data');

# Include helpers.
do File::Object->new->up->file('get_stdout.inc')->s;

# Test.
my $obj = PYX::Write::Raw->new;
my $ret = get_stdout($obj, $data_dir->file('start_tag1.pyx')->s);
is($ret, '<tag');

# Test.
$obj = PYX::Write::Raw->new;
$ret = get_stdout($obj, $data_dir->file('start_tag2.pyx')->s);
is($ret, '<tag par="val"');

# Test.
$obj = PYX::Write::Raw->new;
$ret = get_stdout($obj, $data_dir->file('start_tag3.pyx')->s);
is($ret, '<tag par="val\nval"');

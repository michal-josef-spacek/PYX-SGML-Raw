# Modules.
use File::Object;
use PYX::Write::Raw;
use Test::More 'tests' => 3;

# Directories.
my $data_dir = File::Object->new->up->dir('data');

# Include helpers.
do File::Object->new->up->file('get_stdout.inc')->s;

my $obj = PYX::Write::Raw->new;
my $ret = get_stdout($obj, $data_dir->file('tag1.pyx')->s);
is($ret, '<tag></tag>');

$ret = get_stdout($obj, $data_dir->file('tag2.pyx')->s);
is($ret, '<tag par="val"></tag>');

$ret = get_stdout($obj, $data_dir->file('tag3.pyx')->s);
is($ret, '<tag par="val\nval"></tag>');

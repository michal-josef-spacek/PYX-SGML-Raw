# Modules.
use File::Object;
use PYX::Write::Raw;
use Test::More 'tests' => 2;

# Directories.
my $data_dir = File::Object->new->up->dir('data');

# Include helpers.
do File::Object->new->up->file('get_stdout.inc')->s;

print "Testing: Char writing.\n";
my $obj = PYX::Write::Raw->new;
my $ret = get_stdout($obj, $data_dir->file('char1.pyx')->s);
is($ret, 'char');

$ret = get_stdout($obj, $data_dir->file('char2.pyx')->s);
is($ret, "char\nchar");

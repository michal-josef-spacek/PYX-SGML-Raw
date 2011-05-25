# Pragmas.
use strict;
use warnings;

# Modules.
use File::Object;
use PYX::Write::Raw;
use Test::More 'tests' => 2;

# Directories.
my $data_dir = File::Object->new->up->dir('data');

# Include helpers.
do File::Object->new->up->file('get_stdout.inc')->s;

my $obj = PYX::Write::Raw->new;
my $ret = get_stdout($obj, $data_dir->file('instruction1.pyx')->s);
is($ret, '<?target code?>');

$ret = get_stdout($obj, $data_dir->file('instruction2.pyx')->s);
is($ret, "<?target data\ndata?>");

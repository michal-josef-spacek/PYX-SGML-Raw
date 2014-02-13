# Pragmas.
use strict;
use warnings;

# Modules.
use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('PYX::Write::Raw');
}

# Test.
require_ok('PYX::Write::Raw');

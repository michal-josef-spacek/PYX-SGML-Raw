use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('PYX::SGML::Raw', 'PYX::SGML::Raw is covered.');

use Test::More;

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
BEGIN { $ENV{SPVM_BUILD_DIR} = "$FindBin::Bin/.spvm_build"; }

use Cwd;

use SPVM 'FindBin';

use SPVM 'TestCase::FindBin';

ok(SPVM::TestCase::FindBin->test);

# SPVM::Cwd->abs_path("foo");

is(SPVM::FindBin->Bin, "$FindBin::Bin");
is(SPVM::FindBin->Script, "$FindBin::Script");
is(SPVM::FindBin->RealBin, "$FindBin::RealBin");
is(SPVM::FindBin->RealScript, "$FindBin::RealScript");

done_testing;

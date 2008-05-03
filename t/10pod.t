#!perl -w

# $Id: 10pod.t 3504 2008-03-10 18:54:16Z theory $

use strict;
use Test::More;
eval "use Test::Pod 1.20";
plan skip_all => "Test::Pod 1.20 required for testing POD" if $@;
all_pod_files_ok(all_pod_files('bin', 'lib'));

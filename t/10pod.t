#!perl -w

# $Id: 10pod.t 682 2004-09-28 05:59:10Z theory $

use Test::More;
use FindBin qw($Bin);
use File::Spec;
use File::Find;
use strict;

eval "use Test::Pod 0.95";

if ($@) {
    plan skip_all => "Test::Pod v0.95 required for testing POD";
} else {
    Test::Pod->import;
    my @files;
    my $blib = File::Spec->catfile($Bin, File::Spec->updir, qw(blib lib));
    find( sub {push @files, $File::Find::name if /\.p(l|m|od)$/}, $blib);
    plan tests => scalar @files;
    foreach my $file (@files) {
        pod_file_ok($file);
    }
}
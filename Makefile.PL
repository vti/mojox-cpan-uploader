use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'MojoX::CPAN::Uploader',
    AUTHOR        => 'Yaroslav Korshak <ykorshak@gmail.com>',
    VERSION_FROM  => 'lib/MojoX/CPAN/Uploader.pm',
    ABSTRACT_FROM => 'lib/MojoX/CPAN/Uploader.pm',
    EXE_FILES     => ['bin/mojo-cpanup'],
    PL_FILES      => {},
    PREREQ_PM     => {
        'Mojolicious' => 0.999927,
        'Test::More' => 0,
        'version'    => 0,
    },
    dist  => {COMPRESS => 'gzip -9f', SUFFIX => 'gz',},
    clean => {FILES    => 'mojox-cpan-uploader-*'},
);

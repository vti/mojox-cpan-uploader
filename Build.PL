use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'MojoX::CPAN::Uploader',
    license           => 'perl',
    dist_author       => 'Yaroslav Korshak <ykorshak@gmail.com>',
    dist_version_from => 'lib/MojoX/CPAN/Uploader.pm',
    script_files      => ['bin/mojo-cpanup'],
    requires          => {
        'Mojolicious' => 0.999927,
        'Test::More'  => 0,
        'version'     => 0,
    },
    add_to_cleanup => ['mojox-cpan-uploader-*'],
);

$builder->create_build_script();

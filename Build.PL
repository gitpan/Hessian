use strict;
use warnings;
use Module::Build;


my $builder = Module::Build->new(
    module_name       => 'Hessian',
    license           => 'perl',
    dist_author       => 'William Travis Holton <wtholton@googlemail.com>',
    dist_version_from => 'lib/Hessian/Client.pm',
recursive_test_files => 1,
    requires => {
        'Test::More'                    => 0,
        'Test::Class'                   => 0,
        'Test::Deep'                    => 0,
        'Perl::Critic'                  => 0,
        'Test::Perl::Critic'            => 0,
        'version'                       => 0,
        'Contextual::Return'            => 0,
        'Moose'                         => 0,
        'Class::Std'                    => 0,
        'Exception::Class'              => 0,
        'Math::Int64'                   => 0,
        'Math::BigInt'                  => 0,
        'Switch'                        => 0,
        'YAML'                          => 0,
        'Module::Load'                  => 0,
        'List::MoreUtils'               => 0,
        'LWP::UserAgent'                => 0,
        'HTTP::Request'                 => 0,
        'DateTime'                      => 0,
        'DateTime::Format::Strptime'    => 0,
        'DateTime::Format::Epoch'       => 0,
        'DateTime::Format::Epoch::Unix' => 0,

    },
    add_to_cleanup => ['Hessian-*'],
);

$builder->create_build_script();

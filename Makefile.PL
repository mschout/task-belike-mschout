
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'be more like MSCHOUT -- use the modules he does!',
  'AUTHOR' => 'Michael Schout <mschout@cpan.org>',
  'BUILD_REQUIRES' => {
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30'
  },
  'DISTNAME' => 'Task-BeLike-MSCHOUT',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Task::BeLike::MSCHOUT',
  'PREREQ_PM' => {
    'App::Ack' => '1.82',
    'App::Nopaste' => '0.28',
    'App::cpanminus' => '0',
    'App::cpanoutdated' => '0',
    'Archive::Zip' => '0',
    'BackPAN::Index' => '0',
    'CSS::Minifier' => '0',
    'CSS::Minifier::XS' => '0',
    'DBD::SQLite' => '0',
    'DBI' => '0',
    'Dist::Zilla::Plugin::Twitter' => '0',
    'Dist::Zilla::PluginBundle::MSCHOUT' => '0',
    'Dist::Zilla::PluginBundle::RJBS' => '0',
    'Gravatar::URL' => '0',
    'IO::Socket::SSL' => '0',
    'IPC::System::Simple' => '0',
    'JavaScript::Minifier' => '0',
    'JavaScript::Minifier::XS' => '0',
    'LWP::Protocol::https' => '0',
    'Modern::Perl' => '0',
    'Perl::Tidy' => '0',
    'Pod::Coverage::TrustPod' => '0',
    'SQL::Beautify' => '0',
    'String::Truncate' => '0',
    'Template::Test' => '0',
    'Test::Pod::Coverage' => '0',
    'Vimana' => '0'
  },
  'VERSION' => '1.111500',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);




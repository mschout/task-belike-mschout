
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "be more like MSCHOUT -- use the modules he does!",
  "AUTHOR" => "Michael Schout <mschout\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-BeLike-MSCHOUT",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::BeLike::MSCHOUT",
  "PREREQ_PM" => {
    "App::Ack" => "1.82",
    "App::Nopaste" => "0.28",
    "App::cpanminus" => 0,
    "App::cpanoutdated" => 0,
    "Archive::Zip" => 0,
    "BackPAN::Index" => 0,
    "CSS::Minifier" => 0,
    "CSS::Minifier::XS" => 0,
    "DBD::SQLite" => 0,
    "DBI" => 0,
    "Devel::NYTProf" => 0,
    "Dist::Zilla::Plugin::GitHub" => 0,
    "Dist::Zilla::Plugin::Twitter" => 0,
    "Dist::Zilla::PluginBundle::MSCHOUT" => 0,
    "File::Find::Rule" => 0,
    "Git::CPAN::Patch" => 0,
    "Gravatar::URL" => 0,
    "IO::Socket::SSL" => 0,
    "IPC::System::Simple" => 0,
    "JavaScript::Minifier" => 0,
    "JavaScript::Minifier::XS" => 0,
    "LWP" => 0,
    "LWP::Protocol::https" => 0,
    "List::MoreUtils" => 0,
    "Method::Signatures" => 0,
    "Modern::Perl" => 0,
    "Moo" => 0,
    "Moose" => 0,
    "Moose::Autobox" => 0,
    "MooseX::App" => 0,
    "MooseX::Method::Signatures" => 0,
    "Mouse" => 0,
    "Perl6::Junction" => 0,
    "Perl::Tidy" => 0,
    "Pod::Coverage::TrustPod" => 0,
    "SQL::Beautify" => 0,
    "String::Truncate" => 0,
    "Template::Test" => 0,
    "Test::Pod::Coverage" => 0,
    "TryCatch" => 0,
    "URI" => 0,
    "Vimana" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0
  },
  "VERSION" => "1.130940",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

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




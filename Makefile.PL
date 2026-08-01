use 5.010;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME              => 'Preproc::Tiny',
    VERSION_FROM      => 'lib/Preproc/Tiny.pm', 
	EXE_FILES         => ['pp.pl'],
    PREREQ_PM         => {}, 
	BUILD_REQUIRES    => {
		'Test::More'		=> 0,
		'Capture::Tiny'		=> 0,
		'Path::Tiny'		=> 0,
		'Test::Differences'	=> 0,
	},
    ABSTRACT_FROM  => 'lib/Preproc/Tiny.pm',
    AUTHOR         => 'Paulo Custodio, <pscust@cpan.org>',
	LICENSE        => 'perl',
	META_MERGE => {
				'meta-spec' => { version => 2 },
				resources => {
					repository  => {
						type => 'git',
						url  => 'https://github.com/pauloscustodio/perl-Preproc-Tiny.git',
						web  => 'https://github.com/pauloscustodio/perl-Preproc-Tiny',
					},
				},
				bugtracker => {
                		web => 'https://github.com/pauloscustodio/perl-Preproc-Tiny/issues',
            },
	  },
);

sub MY::postamble {
    return q{
pp.pl : lib/Preproc/Tiny.pm
	$(NOECHO) $(CP) lib/Preproc/Tiny.pm pp.pl
	$(NOECHO) $(CHMOD) 755 pp.pl

clean ::
	$(RM_F) pp.pl
};
}

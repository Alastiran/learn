package Justin::Constants;
use strict;
use warnings;
use utf8;

use parent qw/Exporter/;
our @EXPORT;
our @EXPORT_OK;

use Exporter::Constants (
	\@EXPORT_OK => {
		TEA => +{
			FLAVORS => [qw/green black morning/],
			STRENGTHS => [qw/mild strong/],
		},
		COFFEE => +{
			TASTES => [qw/bitter sweet/],
			STORES => +{
				aoyama => 1,
				shibuya => 3,
			},
			coolness => 10,
		},
	}
);


#!/usr/bin/perl 

use strict;
use warnings;

use lib qw( Plack-Middleware-DetectRobots/lib );

use Data::Dumper;
use Plack::Builder;

my $key = undef;
# $key = 'psgix.robot_client';

my $app = sub {
	my $env = shift;

	my $response = '';

	my $ek = 'robot_client';
	$ek = $key if defined $key;
		
	if ( $env->{$ek} ) {
		$response = "\nROBOT CLIENT DETECTED\n\n";
	}
	else {
		$response = "\n_NO_ ROBOT CLIENT DETECTED\n\n";
	}

	$response .= Dumper($env);

	return [
		200,
		[ 'Content-Type' => 'text/plain' ],
		[ $response ]
	];
};

builder {
	if ( defined $key ) {
        enable 'DetectRobots', env_key => $key, local_regexp => qr/firefox/i;
	}
	else {
		enable 'DetectRobots', extended_check => 1;
	}
	$app;
};

#
# Examples
#
# Bot
# curl -A 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)' http://0:5000/
#
# Browser
# curl -A 'Mozilla/5.0 (X11; Linux x86_64; rv:18.0) Gecko/20100101 Firefox/18.0' http://0:5000/
#

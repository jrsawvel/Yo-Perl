#!/usr/bin/perl -wT

use strict;

use lib '/home/username/Yo';

use Yo;

my $api_token = "yo-api-token";

my $yo = Yo->new($api_token);

$yo->all;

$yo->user('USERNAME');

my $json = $yo->subscribers;
# returned format from Yo equals {"result": 1}

# could install and use JSON::PP module to decode this tiny piece of json or use regex.
if ( $json =~ m|{"result": (\d+)| ) {
    print "subscriber count = $1\n";
}


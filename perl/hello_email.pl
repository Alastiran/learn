#!/usr/bin/perl
use Email::MIME;
use Email::Sender::Simple qw(sendmail);
use Test::More;
use utf8;
use strict;
use warnings;

BEGIN { $ENV{EMAIL_SENDER_TRANSPORT} = 'Test'; };

my $subject = "Playing aorund with the sender object";
my $body = <<HERE;
Justin, here are the RFC's you should use when structuring referencing things about email:
    RFC 5322, the mail email format definition RFC from 2008: https://tools.ietf.org/html/rfc5322
Whoa, the CC worked to yahoo, but not to alum.mit.edu. I wonder if alum filtered my email cause it's 
fishy looking?
日本語はできますか？
[端類]　スマートフォーン
HERE

my $message = Email::MIME->create(
    header => [
        from       => 'justinsharps@justins-macbook-air.local',
        "Reply-To" => 'sharps.justin1865@mgail.com',
        To       => 'tr0phy13@gmail.com, tr0phy13@yahoo.com',
        Subject  => $subject,
    ],
    body_str => $body,
    attributes => {
        encoding    => "base64",
        charset     => "UTF8",
    },
);

sendmail($message, {from => 'jlsharps@alum.mit.edu'});

my @deliveries = Email::Sender::Simple->default_transport->deliveries;

note explain \@deliveries;


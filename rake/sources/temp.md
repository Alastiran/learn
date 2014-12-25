[![Build Status](https://secure.travis-ci.org/arsduo/koala.png)](http://travis-ci.org/arsduo/koala)
[![Code Climate](https://codeclimate.com/github/arsduo/koala.png)](https://codeclimate.com/github/arsduo/koala)

Koala
====
[Koala](http://github.com/arsduo/koala) is a Facebook library for Ruby, supporting the Graph API (including the batch requests and photo uploads), the REST API, realtime updates, test users, and OAuth validation.  We wrote Koala with four goals:

* Lightweight: Koala should be as light and simple as Facebook’s own libraries, providing API accessors and returning simple JSON.
* Fast: Koala should, out of the box, be quick. Out of the box, we use Facebook's faster read-only servers when possible and if available, the Typhoeus gem to make snappy Facebook requests.  Of course, that brings us to our next topic:
* Flexible: Koala should be useful to everyone, regardless of their current configuration.  We support JRuby, Rubinius, and REE as well as vanilla Ruby (1.8.7, 1.9.2, 1.9.3, and 2.0.0), and use the Faraday library to provide complete flexibility over how HTTP requests are made.

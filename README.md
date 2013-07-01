abb
====

[![Build Status](https://secure.travis-ci.org/kachick/abb.png)](http://travis-ci.org/kachick/abb)
[![Gem Version](https://badge.fury.io/rb/abb.png)](http://badge.fury.io/rb/abb)

Description
-----------

Generate abbreviations from words

Features
--------

* initial word (acronym, initialism)
* consonant, vowel

Usage
-----

Basic API

```ruby
require 'abb'

Abb.fold('google') #=> "ggl"
```

Extended

```ruby
require 'abb/core_ext'


'google'.abb  #=> "ggl"
'Japan'.abb   #=> "Jpn"
'American Standard Code for Information Interchange'.abb  #=> "ASCII"
```

Requirements
-------------

* Ruby - [1.9.3 or later](http://travis-ci.org/#!/kachick/abb)

Install
-------

```bash
$ gem install abb
```

Link
----

* [Home](http://kachick.github.com/abb/)
* [code](https://github.com/kachick/abb)
* [API](http://kachick.github.com/abb/yard/frames.html)
* [issues](https://github.com/kachick/abb/issues)
* [CI](http://travis-ci.org/#!/kachick/abb)
* [gem](https://rubygems.org/gems/abb)

License
--------

The MIT X11 License  
See MIT-LICENSE for further details.
# abb

![Build Status](https://github.com/kachick/abb/actions/workflows/test_behaviors.yml/badge.svg?branch=main)
[![Gem Version](https://badge.fury.io/rb/abb.png)](http://badge.fury.io/rb/abb)

Generate abbreviations from words

* initial word (acronym, initialism)
* consonant, vowel

## Usage

Require Ruby 2.6 or later

Add below code into your Gemfile

```ruby
gem 'abb', '>= 0.2.0', '< 0.3.0'
```

### Overview

```ruby
require 'abb'

Abb.fold('google') #=> "ggl"
```

Extending String

```ruby
module YourModuleOrClass
  using Abb::Refinements

  'google'.abb  #=> "ggl"
  'Japan'.abb   #=> "Jpn"
  'American Standard Code for Information Interchange'.abb  #=> "ASCII"
end
```

## Links

* [Repository](https://github.com/kachick/abb)
* [API documents](https://kachick.github.io/abb/)

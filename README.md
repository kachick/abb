# abb

![Build Status](https://github.com/kachick/abb/actions/workflows/test_behaviors.yml/badge.svg?branch=main)
[![Gem Version](https://badge.fury.io/rb/abb.png)](http://badge.fury.io/rb/abb)

Generate abbreviations from words

## Usage

Require Ruby 3.1 or later

Add below code into your Gemfile

```ruby
gem 'abb', '>= 0.2.0', '< 0.3.0'
```

### Overview

```ruby
require 'abb'

Abb.fold('google') #=> "ggl"
```

Extending String without namespace pollution

```ruby
module YourModuleOrClass
  using Abb::Refinements

  def func
    p 'google'.abb  #=> "ggl"
    p 'Japan'.abb   #=> "Jpn"
    p 'American Standard Code for Information Interchange'.abb  #=> "ASCII"
  end
end

'google'.abb #=> NoMethodError
```

## Links

* [Repository](https://github.com/kachick/abb)
* [API documents](https://kachick.github.io/abb/)

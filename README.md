# abb

- _**This repository is archived**_
- _**No longer maintained**_
- _**All versions have been removed from <https://rubygems.org> to free up valuable namespace for other developers**_.

![Build Status](https://github.com/kachick/abb/actions/workflows/test_behaviors.yml/badge.svg?branch=main)

Generate abbreviations from words

## Usage

Require Ruby 3.1 or later

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


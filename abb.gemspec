lib_name = 'abb'.freeze 
require "./lib/#{lib_name}/version"

Gem::Specification.new do |gem|
  # specific

  gem.description   = %q{Generate abbreviations from words}

  gem.summary       = gem.description.dup
  gem.homepage      = "http://kachick.github.com/#{lib_name}/"
  gem.license       = 'MIT'
  gem.name          = lib_name.dup
  gem.version       = Abb::VERSION.dup

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_development_dependency 'yard', '>= 0.8.6.2', '< 0.9'
  gem.add_development_dependency 'rake', '~> 10'
  gem.add_development_dependency 'bundler', '>= 1.3.5', '< 2'

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
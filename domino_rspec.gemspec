# -*- encoding: utf-8 -*-
require File.expand_path('../lib/domino_rspec/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nick Gauthier"]
  gem.email         = ["ngauthier@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "domino_rspec"
  gem.require_paths = ["lib"]
  gem.version       = DominoRspec::VERSION

  gem.add_dependency 'sinatra'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'domino'
end

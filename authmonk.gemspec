# -*- encoding: utf-8 -*-
require File.expand_path('../lib/authmonk/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alif Rachmawadi"]
  gem.email         = ["subosito@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "authmonk"
  gem.require_paths = ["lib"]
  gem.version       = Authmonk::VERSION

  # dependencies
  gem.add_dependency 'rails', '>= 3.2.1'
  gem.add_dependency 'devise', '>= 2.0.0'
  gem.add_dependency 'bson_ext'
  gem.add_dependency 'mongoid', '>= 2.4.0'
  gem.add_dependency 'mongoid_roles'
end

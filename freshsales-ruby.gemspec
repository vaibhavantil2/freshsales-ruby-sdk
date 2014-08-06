# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freshsales/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "freshsales-ruby"
  spec.version       = Freshsales::Ruby::VERSION
  spec.authors      = ["Freshsales Team"]
  spec.email         = ["freshsales-team@freshdesk.com"]
  spec.summary       = %q{Freshsales tracking Library for Ruby.}
  spec.description   = %q{Freshsales tracking Library for Ruby.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "httparty"
  spec.add_dependency "json"
end
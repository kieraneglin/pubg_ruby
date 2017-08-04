# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pubg_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "pubg_ruby"
  spec.version       = PubgRuby::VERSION
  spec.authors       = ["Kieran Eglin"]
  spec.email         = ["kieran.eglin@gmail.com"]

  spec.summary       = %q{blank for now}
  spec.description   = %q{blank for now}
  spec.homepage      = "http://google.ca"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "http", "~> 2.2.2"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "dotenv"
end

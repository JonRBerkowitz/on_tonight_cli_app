# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "on_tonight_cli_app/version"

Gem::Specification.new do |spec|
  spec.authors       = ["Jon Berkowitz"]
  spec.email         = ["jonrberkowitz@gmail.com"]
  spec.description   = %q{Tonight's TV Listings}
  spec.summary       = %q{Tonight's TV Listings}
  spec.homepage      = "https://github.com/JonRBerkowitz/on_tonight_cli_app"

  spec.files         = `git ls-files`.split($\)
  spec.executables   = ["on_tonight"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.name          = "on_tonight_cli_app"
  spec.require_paths = ["lib", "lib/on_tonight_cli_app"]
  spec.version       = OnTonight::VERSION
  spec.license       = "MIT"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "open-uri"
end

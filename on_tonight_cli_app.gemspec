# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "on_tonight_cli_app/version"

Gem::Specification.new do |spec|
  spec.name          = "on_tonight_cli_app"
  spec.version       = OnTonight::VERSION
  spec.authors       = ["'Jonathan Berkowitz'"]
  spec.email         = ["'jonrberkowitz@gmail.com'"]

  spec.summary       = %q{This gem allows the user to get a list of TV shows that are airing new episodse tonight, with a description of each episode.}
  spec.homepage      = "https://github.com/JonRBerkowitz/on_tonight_cli_app"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end

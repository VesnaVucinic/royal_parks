lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "royal_parks/version"

Gem::Specification.new do |spec|
  spec.name          = "royal_parks"
  spec.version       = RoyalParks::VERSION
  spec.authors       = ["vesna.vucinic68@gmail.com"]
  spec.email         = ["vesna.vucinic68@gmail.com"]

  spec.summary       = %q{The CLI project about Royal Parks of London}
  spec.description   = %q{User chose Royal Park whants to know more about from https://www.royalparks.org.uk/parks}
  spec.homepage      = "https://github.com/VesnaVucinic/royal_parks.git"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://github.com/VesnaVucinic/royal_parks.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/VesnaVucinic/royal_parks.git"
  spec.metadata["changelog_uri"] = "https://github.com/VesnaVucinic/royal_parks.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end

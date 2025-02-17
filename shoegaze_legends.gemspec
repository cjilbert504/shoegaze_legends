require_relative 'lib/shoegaze_legends/version'

Gem::Specification.new do |spec|
  spec.name          = "shoegaze_legends"
  spec.version       = ShoegazeLegends::VERSION
  spec.authors       = ["dcoppage86"]
  spec.email         = ["dakotakcoppage@me.com"]

  spec.summary       = %q{learn about the top shoegaze albums}
  spec.description   = %q{this gem will give you the oppurtunity to learn more about the top shoegaze albums ever released.}
  spec.homepage      = "https://github.com/dcoppage86/shoegaze_legends.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dcoppage86/shoegaze_legends.git"
  spec.metadata["changelog_uri"] = "https://github.com/dcoppage86/shoegaze_legends.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end

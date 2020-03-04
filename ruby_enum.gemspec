lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby_enum/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby_enum"
  spec.version       = RubyEnum::VERSION
  spec.authors       = ["Mykhailo Odyniuk"]
  spec.email         = ["m.odyniuk@logicsolutions.com.ua"]

  spec.summary       = %q{Ruby implementation of Enum type.}
  spec.description   = %q{Ruby implementation of Enum type.}
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/mlogix/ruby_enum.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mlogix/ruby_enum.git"
  spec.metadata["changelog_uri"] = "https://github.com/mlogix/ruby_enum/blob/master/CHANGELOG.md."

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
  spec.add_development_dependency "rspec", "~> 3.0"
end

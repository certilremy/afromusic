
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "afromusic/version"

Gem::Specification.new do |spec|
  spec.name          = "afromusic"
  spec.version       = Afromusic::VERSION
  spec.authors       = ["certilremy"]
  spec.email         = ["certil@noukod.com"]

  spec.summary       = %q{this gem allow you to display new and old music afro an haitian music.}
  spec.description   = %q{this gem allow you to display new and old music afro an haitian music. you can shoose displaye music any form you wan new , old even list all music.}
  spec.homepage      = "https://github.com/certilremy/afromusic"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/certilremy/afromusic"
    spec.metadata["changelog_uri"] = "https://github.com/certilremy/afromusic/commit/1920a20f8fb9f7d9e9b22f5b3081e7630fc1b6d6"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  #\\ spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  #spec.executables << "afromusic"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

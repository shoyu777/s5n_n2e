
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "s5n_n2e/version"

Gem::Specification.new do |spec|
  spec.name          = "s5n_n2e"
  spec.version       = S5nN2e::VERSION
  spec.authors       = ["shoyu777"]
  spec.email         = [""]

  spec.summary       = %q{To shorten a word like internationalization -> i18n.}
  spec.description   = %q{You can shorten any word/words you want as like, internationalization -> i18n or "Stay hungry, stay foolish." -> "S2y h4y, s2y f5h." Please try it!}
  spec.homepage      = "https://github.com/shoyu777/s5n_n2e"
  spec.license       = "MIT"


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

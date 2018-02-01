
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kaimurai_copyright_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "kaimurai_copyright_tool"
  spec.version       = KaimuraiCopyrightTool::VERSION
  spec.authors       = ["TODO: Charles Clemens"]
  spec.email         = ["TODO: thekaimurai@gmail.com"]

  spec.summary       = %q{Display a custom copyright with the current year, name, and a message that says all rights reserved. It's kind of a big deal.}
  spec.homepage      = "https://kaimurai.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end

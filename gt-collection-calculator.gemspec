# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gt-collection-calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "gt-collection-calculator"
  spec.version       = GtCollectionCalculator::VERSION
  spec.authors       = ["Phuong Nguyen"]
  spec.email         = ["phuongnd08@gmail.com"]
  spec.summary       = %q{A calculator to deal with GTCollection nasty charging calculation}
  spec.description   = %q{A calculator to deal with GTCollection nasty charging calculation}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency("rspec", [">= 0"])
end

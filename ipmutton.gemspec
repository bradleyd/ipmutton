# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ipmutton/version'

Gem::Specification.new do |spec|
  spec.name          = "ipmutton"
  spec.version       = Ipmutton::VERSION
  spec.authors       = ["Bradley Smith"]
  spec.email         = ["bradleydsmith@gmail.com"]
  spec.description   = %q{ returns ip (public ip, reverse dns,etc..) information about the host you are on}
  spec.summary       = %q{returns ip (public ip, reverse dns,etc..) information about the host you are on}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "rake"
end

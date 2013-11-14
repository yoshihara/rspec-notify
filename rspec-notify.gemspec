# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/notify/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-notify"
  spec.version       = Rspec::Notify::VERSION
  spec.authors       = ["yoshihara"]
  spec.email         = ["h.yoshihara@everyleaf.com"]
  spec.description   = "Notification for Rspec with Growl."
  spec.summary       = "Notification for Rspec with Growl."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep("spec")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("ruby-growl")
  spec.add_runtime_dependency("rspec")
  spec.add_development_dependency("bundler", "~> 1.3")
  spec.add_development_dependency("rake")
end

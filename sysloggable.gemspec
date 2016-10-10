# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sysloggable/version'

Gem::Specification.new do |spec|
  spec.name          = "sysloggable"
  spec.version       = Sysloggable::VERSION
  spec.authors       = ["Michail Merkushin"]
  spec.email         = ["merkushin.m.s@gmail.com"]

  spec.summary       = "The Logger with writing to syslog"
  spec.description   = "Writes to syslog with user defined params"
  spec.homepage      = "https://github.com/abak-press/sysloggable"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "syslogger", "~> 1.6"
  spec.add_runtime_dependency "dry-container", ">= 0.3.4"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "timecop", "~> 0.8"
  spec.add_development_dependency "simplecov", "~> 0.12"
end

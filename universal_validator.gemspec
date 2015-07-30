# coding: utf-8

begin
  require "./lib/universal_validator/version"
rescue LoadError
  module UniversalValidator; VERSION = "0"; end
end

Gem::Specification.new do |spec|
  spec.name          = "universal_validator"
  spec.version       = UniversalValidator::VERSION
  spec.authors       = ["Szymon Kopciewski"]
  spec.email         = "s.kopciewski@gmail.com"
  spec.summary       = "The simple, universal validator"
  spec.description   = "The simple, universal validator"
  spec.homepage      = "https://github.com/skopciewski/universal_validator"
  spec.license       = "GPL-3.0"

  spec.require_paths = ["lib"]
  spec.files         = Dir.glob("{bin,lib}/**/*") + \
    %w(Gemfile LICENSE README.md CHANGELOG.md)

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-given"
  spec.add_development_dependency "pry"
end

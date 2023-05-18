# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'biola_frontend_toolkit/version'

Gem::Specification.new do |spec|
  spec.name          = 'biola_frontend_toolkit'
  spec.version       = BiolaFrontendToolkit::VERSION
  spec.authors       = ['Devin Hanlon']
  spec.email         = ['devin.hanlon@biola.edu']
  spec.description   = %q{this is a description}
  spec.summary       = %q{this is a summary}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'bootstrap', '~> 4.6.0'
  spec.add_dependency 'font-awesome-rails', '~> 4.7.0.8'
  spec.add_dependency 'sass-rails', '>= 4.0'
  spec.add_dependency 'slim', '>= 2.0'
  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake'
end

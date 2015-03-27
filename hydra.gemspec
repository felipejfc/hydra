# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hydra/version'

Gem::Specification.new do |gem|
  gem.name          = "hydra"
  gem.version       = Hydra::VERSION
  gem.authors       = [
    "Jeremy Friesen", "Justin Coyne"
  ]
  gem.email         = [
    "jeremy.n.friesen@gmail.com",
    "jcoyne@justincoyne.com",
  ]
  gem.description   = %q{Project Hydra Stack Dependencies}
  gem.summary       = %q{Project Hydra Stack Dependencies}
  gem.homepage      = "http://projecthydra.org/"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.license = 'APACHE2'

  gem.add_dependency 'hydra-head', '~> 8.1.0'
  gem.add_dependency 'jettywrapper', '~> 1.8.3'
  gem.add_dependency 'active-fedora', '~> 8.0.1'
  gem.add_dependency 'rails', '>= 3.2.15', '< 5.0'
  gem.add_dependency 'om', '~> 3.1.0'
  gem.add_dependency 'solrizer', '~> 3.3.0'
  gem.add_dependency 'rsolr', '~> 1.0.12'
  gem.add_dependency 'blacklight', '~> 5.10.0'
  gem.add_dependency 'nokogiri', '~> 1.6.5'
  gem.add_dependency 'rubydora', '~> 1.8.1'
  gem.add_dependency 'nom-xml', '~> 0.5.2'
  gem.add_development_dependency 'github_api', '~> 0.10.1'
end

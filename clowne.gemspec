lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clowne/version'

Gem::Specification.new do |spec|
  spec.name          = 'clowne'
  spec.version       = Clowne::VERSION
  spec.authors       = ['Vladimir Dementyev', 'Sverchkov Nikolay']
  spec.email         = ['palkan@evilmartians.com', 'ssnikolay@gmail.com']

  spec.summary       = 'A flexible gem for cloning your models'
  spec.description   = 'A flexible gem for cloning your models.'
  spec.homepage      = 'https://github.com/clowne-rb/clowne'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.metadata = {
    "bug_tracker_uri" => "http://github.com/clowne-rb/clowne/issues",
    "changelog_uri" => "https://github.com/clowne-rb/clowne/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://clowne.evilmartians.io/",
    "homepage_uri" => "https://clowne.evilmartians.io/",
    "source_code_uri" => "http://github.com/clowne-rb/clowne"
  }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'factory_bot', '~> 6.1'
  spec.add_development_dependency 'rubocop', '~> 0.91.0'
  spec.add_development_dependency 'rubocop-md', '~> 0.4.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.43.2'
  spec.add_development_dependency 'standard', '~> 0.6.1'
end

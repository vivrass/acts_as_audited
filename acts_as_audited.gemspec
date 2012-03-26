# -*- encoding: utf-8 -*-
require File.expand_path('../lib/./version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Brandon Keepers"]
  gem.email = %q{brandon@opensoul.org}
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage = %q{http://github.com/collectiveidea/acts_as_audited}

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "."
  gem.require_paths = ["lib"]
  gem.version       = ::VERSION

  gem.add_dependency(%q<activerecord>, ["~= 2.3"])
  gem.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  gem.add_dependency(%q<jnunemaker-matchy>, [">= 0"])
end

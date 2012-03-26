# -*- encoding: utf-8 -*-
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Brandon Keepers"]
  gem.email = %q{brandon@opensoul.org}
  gem.summary = %q{ActiveRecord extension that logs all changes to your models in an audits table}
  gem.description = %q{ActiveRecord extension that logs all changes to your models in an audits table}
  gem.homepage = %q{http://github.com/collectiveidea/acts_as_audited}

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "acts_as_audited"
  gem.require_paths = ["lib"]
  gem.version       = ActsAsAudited::VERSION

  gem.add_dependency(%q<activerecord>, [">= 2.3"])
  gem.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  gem.add_development_dependency(%q<jnunemaker-matchy>, [">= 0"])
end

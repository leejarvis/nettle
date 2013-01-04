# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name          = 'nettle'
  gem.version       = '0.0.1'
  gem.authors       = ['Lee Jarvis']
  gem.email         = ['ljjarvis@gmail.com']
  gem.description   = 'A wrapper around net/http for a simplified API (feature lacking)'
  gem.summary       = 'A tiny wrapper around net/http'
  gem.homepage      = 'https://github.com/injekt/nettle'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end

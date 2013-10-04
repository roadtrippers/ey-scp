# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "ey-scp"
  spec.version       = '0.1.0' 
  spec.authors       = ["Steven Dunlap"]
  spec.email         = ["steven@roadtrippers.com"]
  spec.description   = "Quickly deploy config files (e.g. YMLs) to all EngineYard servers"
  spec.summary       = File.open('README.md').read 
  spec.homepage      = "http://github.com/roadtrippers/ey-scp"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  
  spec.add_dependency 'json', '~> 1.8'
  spec.add_dependency 'net-scp', '~> 1.1'
  spec.add_dependency 'faraday', '~> 0.8'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'double_round_robin_schedule/version'

Gem::Specification.new do |spec|
  spec.name          = "double_round_robin_schedule"
  spec.version       = DoubleRoundRobinSchedule::VERSION
  spec.authors       = ["nithin stany dsouza"]
  spec.email         = ["nithinstany@gmail.com"]
  spec.summary       = %q{Round Robin Tournament schedule for competitions or classroom teams}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/nithinstany/double_round_robin_schedule"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  


  if RUBY_VERSION == "1.8.7"
    spec.add_development_dependency 'minitest', '3.2.0'
  else
    spec.add_development_dependency 'minitest'
  end 
end

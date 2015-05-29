# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'usagewatch_ext/version'

Gem::Specification.new do |spec|
  spec.name          = "usagewatch_ext"
  spec.version       = UsagewatchExt::VERSION
  spec.authors       = ["Ruben Espinosa, Phil Chen, Karthik K"]
  spec.email         = ["bello@skcript.com"]
  spec.description   = %q{A Ruby Gem with methods to find usage statistics such as CPU, Disk, TCP/UDP Connections, Load, Bandwidth, Disk I/O, and Memory}
  spec.summary       = %q{Extended version of usagewatch}
  spec.homepage      = "https://github.com/skcript/ruby-stats"
  spec.license       = "MIT"
  spec.rdoc_options << '--main' << 'README'

  spec.post_install_message = "* Thank you for installing ruby-stats. Please report bugs to http://github.com/skcript/ruby-stats/issues/new/"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency('usagewatch', '~> 0.0.6')

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
end

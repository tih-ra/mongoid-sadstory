# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid/sadstory/version'

Gem::Specification.new do |spec|
  spec.name          = "mongoid-sadstory"
  spec.version       = Mongoid::Sadstory::VERSION
  spec.authors       = ["Marcin Stecki"]
  spec.email         = ["marcin@netguru.pl"]
  spec.summary       = %q{Adds support for multiparamter attributes to mongoid 4.x series}
  spec.description   = %q{This is a sad story - mongoid maintainers decided to drop support for multi paramter fields in mongoid 4.x, leaving it to ActiveSupport/ActiveModel and rails. Sadly there was no extraction ready after ror 4.x was released and since mongoid 4.x was the only version working with ror 4.x series this meant you could not update your application from ror 3.x to 4.x if you were using mongoid and you had date/time/datetime fields somewhere in your application. That's just sad. What I did is just extracted our hacks to make multiparams working again. Make sure your specs are passing before using this in prod systems...}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "mongoid", "~> 4.0"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

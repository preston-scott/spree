# encoding: UTF-8
version = File.read(File.expand_path("../SPREE_VERSION",__FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree'
  s.version     = version
  s.summary     = 'Open Source E-Commence for Ruby on Rails.'
  s.description = "The most flexible commerce platform available - designed from the ground up to be as open and extensible as possible."

  s.files = Dir[
    'app/**/*', 
    'bin/**/*', 
    'config/**/*', 
    'db/**/*',
    'features/**/*',
    'generate/**/*',
    'lib/**/*', 
    'log/README',
    'public/**/*',
    'script/**/*',
    'test/**/*',
    'vendor/**/*'
  ]

  s.require_path = 'lib'
  s.requirements << 'none'
  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = ">= 1.3.6"

  s.author       = 'Sean Schofield'
  s.email        = 'sean@spreecommerce.com'
  s.homepage     = 'http://spreecommerce.com'

  s.add_dependency 'rake', '0.8.7'
  s.add_dependency 'rdoc', '>= 3.9.4'
  s.add_dependency 'rails', '>= 2.3.15'
  s.add_dependency 'rack', '>= 1.1.0'
  s.add_dependency 'highline', '= 1.5.1'
  s.add_dependency 'authlogic', '2.1.3'
  s.add_dependency 'authlogic-oid', "1.0.4"
  s.add_dependency 'activemerchant', '= 1.7.0'
  s.add_dependency 'activerecord-tableless', '= 0.1.0'
  s.add_dependency 'less', "1.2.20"
  s.add_dependency 'stringex', "1.0.3"
  s.add_dependency 'chronic', '0.2.3'
  s.add_dependency 'whenever', "0.3.7"
  s.add_dependency 'searchlogic', "2.3.5"
  s.add_dependency 'will_paginate', "2.3.16"
  s.add_dependency 'state_machine', "0.9.2"
  s.add_dependency 'faker', "0.3.1"
  s.add_dependency 'paperclip', "= 2.3.1.1"
  s.add_dependency 'ruby-openid', '>= 2.0.4'
end

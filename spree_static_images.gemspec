# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_static_images'
  s.version     = '0.1'
  s.summary     = 'Add images to Spree'
  s.description = 'Add images to Spree'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Pete Campbell'
  s.email     = 'pete@sumirolabs.com'
  s.homepage  = 'http://www.google.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.0'

  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
end

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'foreman_openstack_v3/version'
require 'date'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'foreman_openstack_v3'
  s.version     = ForemanOpenstackV3::VERSION
  s.date        = Date.today.to_s
  s.authors     = ['Anthony Chevalet']
  s.email       = ['anthony.chevalet@gmail.com']
  s.homepage    = 'https://github.com/achevalet/foreman_openstack_v3'
  s.summary     = 'Add support of OpenStack V3 authentication'
  s.description = 'Add support of OpenStack V3 authentication'
  s.files       = Dir['{app,config,db,lib,locale}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  s.licenses    = ['GPL-3.0']
  
  s.add_dependency 'fog-openstack', '~> 0.1.12'
end

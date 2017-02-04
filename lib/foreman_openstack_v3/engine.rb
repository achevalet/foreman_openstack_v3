module ForemanOpenstackV3
  class Engine < ::Rails::Engine
    engine_name 'foreman_openstack_v3'

    config.autoload_paths += Dir["#{config.root}/app/controllers"]
    config.autoload_paths += Dir["#{config.root}/app/helpers/concerns"]
    config.autoload_paths += Dir["#{config.root}/app/models"]
    config.autoload_paths += Dir["#{config.root}/app/views"]
    config.autoload_paths += Dir["#{config.root}/app/overrides"]

    # Add any db migrations
    initializer 'foreman_openstack_v3.load_app_instance_data' do |app|
      ForemanOpenstackV3::Engine.paths['db/migrate'].existent.each do |path|
        app.config.paths['db/migrate'] << path
      end
    end

    initializer 'foreman_openstack_v3.register_plugin', :before => :finisher_hook do |_app|
      Foreman::Plugin.register :foreman_openstack_v3 do
        requires_foreman '>= 1.13'
        compute_resource ForemanOpenstackV3::Openstack
        parameter_filter ComputeResource, :domain
      end
    end

    config.to_prepare do
      begin
        #ApplicationController.send(:include, ForemanOpenstackV3::Openstack)
      end
    end

  end
end

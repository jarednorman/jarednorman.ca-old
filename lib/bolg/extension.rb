require 'lib/bolg/bolg_data'

module Bolg
  class Extension < Middleman::Extension
    def initialize(app, options_hash={}, &block)
      super
    end

    def after_configuration
      @bolg = Bolg::BolgData.new
      @app.sitemap.register_resource_list_manipulator(:"bolg_posts", @bolg, false)
    end
  end
end

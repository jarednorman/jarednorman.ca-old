require 'lib/bolg/bolg_data'
require 'lib/bolg/helpers'

module Bolg
  class Extension < Middleman::Extension
    self.defined_helpers = [Bolg::Helpers]

    def after_configuration
      @app.bolg = bolg = Bolg::BolgData.new
      @app.sitemap.register_resource_list_manipulator(:"bolg_posts", bolg, false)
    end
  end
end

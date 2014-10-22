class Bolg < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  def manipulate_resource_list(resources)
    resources.each do |resource|
      # if it is a blog post
      #   rewrite resource.destination_path based on resource.data
    end
  end
end
::Middleman::Extensions.register(:bolg, Bolg)

class Bolg < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  def manipulate_resource_list(resources)
    resources.each do |resource|
      if /^blog\//.match(resource.path)
        resource.destination_path = "blog/#{resource.data["published_date"].to_default_s}-#{resource.data["title"].parameterize}.html"
      end
    end
  end
end
::Middleman::Extensions.register(:bolg, Bolg)

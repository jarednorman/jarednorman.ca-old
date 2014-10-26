module Bolg
  class BolgData
    def manipulate_resource_list(resources)
      @bolg_posts = []

      resources.each do |resource|
        if /^blog\//.match(resource.path)
          resource.destination_path = "blog/#{resource.data["published_date"].to_default_s}-#{resource.data["title"].parameterize}.html"
          @bolg_posts << resource
        end
      end
    end
  end
end

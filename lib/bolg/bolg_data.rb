module Bolg
  class BolgData
    attr_reader :posts

    def initialize
      @posts = []
    end

    def manipulate_resource_list(resources)
      @posts = []

      resources.each do |resource|
        if /^blog\//.match(resource.path)
          resource.destination_path = "blog/#{resource.data["published_date"].to_default_s}-#{resource.data["title"].parameterize}.html"
          @posts << resource
        end
      end
    end
  end
end

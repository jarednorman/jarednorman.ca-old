module Bolg
  class PostPresenter
    def initialize(resource)
      @resource = resource
    end

    def title
      resource.data[:title]
    end

    def author
      resource.data[:author]
    end

    def published_at
      resource.data[:published_date]
    end

    def summary
      Nokogiri::HTML(body).css('p').first.to_html
    end

    def body
      @body ||= resource.render layout: false
    end

    def path
      "/#{resource.destination_path}"
    end

    private
    attr_reader :resource
  end
end

require 'lib/bolg/post_presenter'

module Bolg::Helpers
  attr_accessor :bolg

  def bolg_posts
    bolg.posts.map do |resource|
      Bolg::PostPresenter.new(resource)
    end.sort_by(&:published_at).reverse
  end
end

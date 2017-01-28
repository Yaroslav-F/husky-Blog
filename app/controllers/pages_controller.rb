class PagesController < ApplicationController
  include HighVoltage::StaticPage

  def show
    @posts = Post.last(2)
    super
  end
end

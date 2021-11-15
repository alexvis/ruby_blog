class LuController < ApplicationController
  def index
    @blog = Blog.new
  end
end

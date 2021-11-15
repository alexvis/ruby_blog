class LuController < ApplicationController
  def index
    @blog = Blog.new
    # binding.pry
  end
end

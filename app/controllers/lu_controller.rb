class LuController < ApplicationController
  def index
    @blog = Blog.new
    @user = User.find_by(last_name: "Amarante")
  end
end

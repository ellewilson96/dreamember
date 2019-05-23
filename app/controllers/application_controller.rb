class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def home
      @posts = Post.all
      respond_to do |f|
       f.html
       f.json {render json: @posts}
     end
    render :home
  end
end

class UsersController < ApplicationController

  def show
    @posts = current_user.posts

   if @posts.present?
     @post = @posts.find_by(params[:post_id])
       respond_to do |f|
       f.html
       f.json {render json: @post, layout: false}

     @comments = @post.comments
     @comment = @post.comments.build
   end
  else
   @post = Post.new
   render '_form'
 end

 end
end

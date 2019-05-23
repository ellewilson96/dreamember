class CommentsController < ApplicationController
  before_action :set_post

  def index
   respond_to do |f|
     f.html
     f.json {render json: @comments, layout: false}
     @comments = @post.comments.order(created_at: :asc)
  end
 end

 def create
   @comment = @post.comments.build(comments_params)
   if @comment.save
     render json: @comment, layout: false
   else
     render "posts/show"
   end
 end


private

  def set_post
   @post = Post.find_by(params[:post_id])
 end

 def comments_params
   params.require(:comment).permit(:content)
 end
end

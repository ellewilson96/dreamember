class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.new
 end

  def index
    @posts = current_user.posts
    respond_to do |f|
     f.html
     f.json {render json: @posts}
 end
  end

def show
   respond_to do |f|
   f.html
   f.json {render json: @post, layout: false}
end
end

 def create
     @post = current_user.posts.build(post_params)
       respond_to do |f|
         if @post.save
         f.html { redirect_to @post, notice: 'Post was successfully created.' }
          f.json { render :show, status: :created, location: @post }
      else
         f.html { render :new }
         f.json { render json: @post.errors, status: :unprocessable_entity }
       end
     end
end

  def edit
  end

  def update
      @post.update_attributes(post_params)
    if  @post.save
      redirect_to user_path(current_user.id)
    else
      @post.errors.add(:base, "You must be the original creator to make changes
      to this post.")
      render :edit
    end
  end

  def destroy
    @post.delete
    redirect_to posts_path
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end

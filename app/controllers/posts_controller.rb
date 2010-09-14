class PostsController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index, :show]

  def create
    @post = Post.new(params[:post])
    @post.admin = current_admin
    create!
  end
end

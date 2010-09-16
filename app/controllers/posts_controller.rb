class PostsController < InheritedResources::Base
  uses_tiny_mce :only => [:new, :create, :edit, :update]
  before_filter :authenticate_admin!, :except => [:index, :show]

  def index
    @posts = Post.paginate :page => params[:page], :per_page => 5
    index!
  end

  def create
    @post = Post.new(params[:post])
    @post.admin = current_admin
    create!
  end
end

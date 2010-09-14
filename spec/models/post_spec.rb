require 'spec_helper'

describe Post do
  should_belong_to :admin

  before :each do
    @admin = Factory.create :admin
    @post = Post.new
    @post.stub!(:current_admin).and_return(@admin)
    Post.stub!(:new).and_return(@post)
  end

  it "should register logged admin as author of post" do
    post = Post.create!(:title => "Fake Post", :body => "<h1>Fake Body</h1>")
    post.admin.should eq(@admin)
  end
end

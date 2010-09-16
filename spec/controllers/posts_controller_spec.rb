require "spec_helper"

describe PostsController do
  before :each do
    @admin = Factory.create :admin
    sign_in @admin
  end

  should_behave_like_resource :except => :create, :paginate => true

  describe "POST create" do
    describe "with valid parameters" do
      it "assigns a newly created Post as @post" do
        clazz.stub!(:new).with("title" => "Fake Title").and_return(mocked_model(:save => true))
        mocked_model.should_receive(:admin=).with(@admin)
        post :create, :post => { :title => "Fake Title" }
        assigns[:post].should equal(mocked_model)
      end
    end
  end
end

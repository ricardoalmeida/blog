require "spec_helper"

describe PostsController do
  before :each do
    sign_in Factory.create :admin
  end

  should_behave_like_resource
end

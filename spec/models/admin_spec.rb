require "spec_helper"

describe Admin do
  before :all do
    Factory.create :admin
  end

  should_validate_presence_of :username
  should_validate_uniqueness_of :username
  should_have_many :posts  
end

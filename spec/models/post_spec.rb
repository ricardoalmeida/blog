require 'spec_helper'

describe Post do
  should_belong_to :admin
  should_validate_presence_of :title, :body
end

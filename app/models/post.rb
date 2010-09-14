class Post < ActiveRecord::Base
  belongs_to :admin

  before_create do |post|
    post.admin = current_admin
  end
end

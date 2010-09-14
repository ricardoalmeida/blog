class Post < ActiveRecord::Base
  belongs_to :admin
  validates_presence_of :title, :body
end

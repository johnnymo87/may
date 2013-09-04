class Article < ActiveRecord::Base
  belongs_to :User
  has_many :Comments
end
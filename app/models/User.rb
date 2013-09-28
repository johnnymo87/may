class User < ActiveRecord::Base
  has_many :articles
  has_many :comments

  #User Types
    # Admin -> profile_id: '1'
        # Privileges:  Can create, edit, or delete any content or user
    # Writer -> profile_id: '2'
        # Privileges:  Can create, edit, or delete own articles and comments
    # Visitor -> profile_id: '3'
        # Privileges:  Can create, edit, or delete own comments
end
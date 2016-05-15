class Comment < ActiveRecord::Base
    # association to posts
  belongs_to :post
end

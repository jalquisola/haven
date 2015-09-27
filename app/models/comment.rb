class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true, counter_cache: :comments_count
  belongs_to :user
end

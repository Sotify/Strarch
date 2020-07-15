class Post < ApplicationRecord
  belongs_to :user
  has_many   :comments
  
  def self.search
    return Post.all unless search
    Post.where(['content Like ?', "%#{search}%"])
  end
end

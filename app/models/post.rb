class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :content, length: { minimum: 2 }
end

Post.create(title: "happy").valid?
Post.create(title: nil).valid?

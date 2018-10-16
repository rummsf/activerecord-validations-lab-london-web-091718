class Author < ActiveRecord::Base
    validates :name, presence: true
end
 
Author.create(name: "John").valid? # => true
Author.create(name: nil).valid? # => false


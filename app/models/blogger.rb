class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts 
    validates :age, numericality: { greater_than: 0 }
    validates :name, uniqueness: true
    validates :bio, length: { maximum: 30 }


    def featured_post
         self.posts.max_by {|post| post.likes }
    end 

    def num_of_likes
        self.posts.sum {|post| post.likes }
    end 

end

class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def five_most_recent
        self.posts.order('created_at desc').limit(5)
    end

    def most_likes
        self.posts.order(likes: :desc)
    end 

    def average_age
        self.bloggers.sum(:age).to_f / self.bloggers.count
    end 

end

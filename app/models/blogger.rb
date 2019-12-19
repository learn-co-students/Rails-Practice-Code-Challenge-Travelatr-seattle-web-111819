class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 30}

    def num_likes
        self.posts.sum(:likes)
    end

    def featured
        self.posts.order(:likes).last
    end

    def most_post_dest
        # self.posts.group(:destination_id).order('count(*) desc').select(:destination_id).limit(5)
    end

end

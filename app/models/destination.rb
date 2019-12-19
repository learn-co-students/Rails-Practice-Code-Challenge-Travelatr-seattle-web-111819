class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def name_with_country
        "#{self.name}, #{self.country}"
    end

    def featured
        self.posts.order(:likes).last
    end

    def most_recent
        self.posts.order('created_at desc').limit(5)
    end

    def average_age
        self.bloggers ? (self.bloggers.sum(:age).to_f / self.bloggers.count) : "N/A"
    end


end

class Show < ActiveRecord::Base

    def self.highest_rating
        maximum(:rating)
    end

    def self.most_popular_show
        find_by(rating: highest_rating)
    end

    def self.lowest_rating
        minimum(:rating)
    end
#     returns the rating of the TV show with the lowest rating (FAILED - 1)

    def self.least_popular_show
        find_by(rating: lowest_rating)
    end
#     returns the name of the TV show with the lowest rating (FAILED - 2)

    def self.ratings_sum
        sum(:rating)
    end
#     returns the sum of all the ratings of all the tv shows (FAILED - 3)

    def self.popular_shows
        where("rating > 5")
        # where("? > 5", params[:rating])
    end
#     returns an array of all of the shows with a rating above 5 (FAILED - 4)

    def self.shows_by_alphabetical_order
        order(:name)
    end
#     returns an array of all of the shows, listed in alphabetical order (FAILED - 5)

end
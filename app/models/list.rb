class List < ApplicationRecord
# has_many :bookmarks
# list has_many :movies
# validates :name, presence: true
# has_many :movies, dependent: :destroy
# end



    has_many :bookmarks, dependent: :destroy
    has_many :movies, through: :bookmarks
    validates :name, presence: true, uniqueness: true
    before_destroy :destroy_saved_movies

    private

    def destroy_saved_movies
        movies.destroy_all
    end
end
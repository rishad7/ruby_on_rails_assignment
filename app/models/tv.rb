class Tv < ApplicationRecord
    has_many :tvseries, dependent: :destroy
    has_many :reviews, dependent: :destroy
end

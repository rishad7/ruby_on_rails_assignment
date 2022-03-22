class Tv < ApplicationRecord
    has_many :tvseries, dependent: :destroy
    has_many :reviews, dependent: :destroy
    validates :name, presence: true
end

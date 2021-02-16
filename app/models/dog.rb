class Dog < ActiveRecord::Base
    has_many :walks
    has_many :dog_walkers, through: :walks
    belongs_to :category
end

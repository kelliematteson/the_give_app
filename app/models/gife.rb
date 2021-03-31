class Gife < ApplicationRecord
    belongs_to :user
    validates :give_name, presence: true 
end
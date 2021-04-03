class Gife < ApplicationRecord
    belongs_to :client
    validates :give_name, presence: true 
end
class Sector < ApplicationRecord
    has_and_belongs_to_many :industries
    validates :name,uniqueness: { message: ->(object, data) do
        " must be unique, #{object.name}!, #{data[:value]} is taken already!  "end 
        }
end

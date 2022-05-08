class Physician < ApplicationRecord
     include Validatable
    has_many :appointments
    has_many :patients, through: :appointments
    before_validation :generate_unique_id

    private
    def generate_unique_id
        unique_id = Random.rand(100...999)

        while Physician.where(unique_id: unique_id).present? 
            unique_id = Random.rand(100...999)
            puts "#{unique_id} must be unique"
        end 
     
        puts unique_id
       
        self.unique_id = unique_id  

    end

    
end

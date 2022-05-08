class Industry < ApplicationRecord
    has_and_belongs_to_many :sectors
    include Validatable
    before_validation :generate_registration_number

    private
    def generate_registration_number
        registration_number = Random.rand(1000...9999)

        while Industry.where(registration_number: registration_number).present?  do
            registration_number = Random.rand(1000...9999)
            puts "#{registration_number} must be unique"

        end  
        puts registration_number

        self.registration_number = registration_number  

    end
end

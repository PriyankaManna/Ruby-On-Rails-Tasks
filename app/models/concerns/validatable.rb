require 'active_support/concern'
module Validatable
    extend ActiveSupport::Concern
    included do
        validates :name, presence: { message: " must be present" }
        validates :email,  presence:{ message: " must be present" },uniqueness: { message: ->(object, data) do
            " must be unique, #{object.name}!, #{data[:value]} is taken already!  "
          end
        }
    end
end

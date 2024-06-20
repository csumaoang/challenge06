class Customer < ApplicationRecord
    has_one_attached :image
  
    validates :full_name, presence: true
  
    def self.ransackable_attributes(auth_object = nil)
      ["id", "full_name", "phone_number", "email", "notes"]
    end
  end
  
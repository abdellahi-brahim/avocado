class Person < ApplicationRecord
  has_many :dogs, dependent: :destroy
end

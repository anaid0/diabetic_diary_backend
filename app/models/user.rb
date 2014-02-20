class User < ActiveRecord::Base
  has_many :entries, inverse_of: :user
  has_many :activity_types, inverse_of: :user
  has_many :measurement_types, inverse_of: :user
  has_many :insulin_types, inverse_of: :user
end

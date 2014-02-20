class InsulinType < ActiveRecord::Base
  has_many :doses, inverse_of: :insulin_type
  belongs_to :user, inverse_of: :insulin_types
end

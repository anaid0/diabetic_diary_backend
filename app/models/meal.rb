class Meal < ActiveRecord::Base
  belongs_to :entry, inverse_of: :meal
end

class Entry < ActiveRecord::Base
  belongs_to :user, inverse_of: :entries
  has_one :measurement, inverse_of: :entry
  has_one :dose, inverse_of: :entry
  has_one :meal, inverse_of: :entry
  has_one :activity, inverse_of: :entry
  has_one :note, inverse_of: :entry
end

class Dose < ActiveRecord::Base
  belongs_to :insulin_type, inverse_of: :doses
  belongs_to :entry, inverse_of: :dose
end

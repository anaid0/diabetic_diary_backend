class Measurement < ActiveRecord::Base
  belongs_to :measurement_type, inverse_of: :measurements
  belongs_to :entry, inverse_of: :measurement
end
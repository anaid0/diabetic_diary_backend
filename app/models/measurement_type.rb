class MeasurementType < ActiveRecord::Base
  has_many :measurements, inverse_of: :measurement_type
  belongs_to :user, inverse_of: :measurement_types
end

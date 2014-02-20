class Activity < ActiveRecord::Base
  belongs_to :activity_type, inverse_of: :activities
  belongs_to :entry, inverse_of: :activity
end

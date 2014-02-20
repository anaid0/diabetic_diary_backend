class ActivityType < ActiveRecord::Base
  has_many :activities, inverse_of: :activity_type
  belongs_to :user, inverse_of: :activity_types
end

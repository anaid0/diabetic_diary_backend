class Note < ActiveRecord::Base
  belongs_to :entry, inverse_of: :note
end

class BookOfClass < ActiveRecord::Base
  belongs_to :group
  belongs_to :discipline
  belongs_to :user
end

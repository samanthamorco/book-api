class Book < ActiveRecord::Base
  validates :author_first_name, :author_last_name, :title, presence: true
end

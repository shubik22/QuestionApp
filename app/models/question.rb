class Question < ActiveRecord::Base
  validates :title, :topic, :author, presence: true

end
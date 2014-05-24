class Topic < ActiveRecord::Base
  validates :title, presence: true

  has_many :questions, inverse_of: :topic
end
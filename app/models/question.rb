class Question < ActiveRecord::Base
  # validates :title, :topic, :author, presence: true

  belongs_to(
    :author,
    class_name: User,
    foreign_key: :author_id,
    primary_key: :id,
    inverse_of: :question
  )

  belongs_to :topic, inverse_of: :question
end
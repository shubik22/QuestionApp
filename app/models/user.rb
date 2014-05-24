class User < ActiveRecord::Base
  attr_reader :password
  validates :username, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :session_token, presence: true
  
  has_many(
    :questions,
    class_name: Question,
    foreign_key: :author_id,
    inverse_of: :author
  )
  
end
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  before_create :generate_username_from_email

  private

  def generate_username_from_email
    return if self.username
    generated_username = email.split(/@/).first
    self.username = generated_username
    count = 0
    while self.class.exists?(username: self.username)
      self.username = "#{generated_username}#{count}"
      count += 1
    end
  end
end

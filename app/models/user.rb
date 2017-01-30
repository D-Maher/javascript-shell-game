class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  
  def win_percentage
    self.games_won / (self.games_won + self.games_lost)
  end
  
end

class User < ApplicationRecord
  has_secure_password

  has_many :games, foreign_key: :player_id

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  
  def win_percentage
    self.games_won / (self.games_won + self.games_lost)
  end

end

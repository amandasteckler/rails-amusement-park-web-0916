class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  validates :password, presence: true

  def mood
    return "sad" if self.nausea > self.happiness
    return "happy" if self.happiness > self.nausea
  end
end

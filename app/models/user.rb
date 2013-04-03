class User < ActiveRecord::Base
  has_many :posts 
  has_many :comments 
  has_many :votes

  has_secure_password

  attr_accessible :name, :email, :password, :password_confirmation

  validates_uniqueness_of :email

  def self.authenticate(email, password)
    user = User.where(email: email).first
    if user == nil
      nil
    elsif user.authenticate(password) == user
      user
    else
      nil
    end
  end
end
class Wizard < ActiveRecord::Base

  validates :first_name, :last_name, :email, :password_digest, presence: true
  validates :email, uniqueness: true

  has_secure_password

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user && user.authenticate == password
      user
    else
      nil
    end
  end

end

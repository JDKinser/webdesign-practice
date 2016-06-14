class Wizard < ActiveRecord::Base

  validates :first_name, :last_name, :email, :password_digest, presence: true
  validates :email, uniqueness: true

  has_secure_password

  def self.authenticate(email, password)
    wizard = Wizard.find_by(email: email)
    if wizard && wizard.authenticate(password)
      wizard
    else
      nil
    end
  end

end

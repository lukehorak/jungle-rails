class User < ActiveRecord::Base
  has_secure_password
  
  has_many :reviews

  validates :first_name,
              presence: true
  validates :last_name,
              presence: true
  validates :email,
              presence: true,
              uniqueness: true,
              format: {
                # =removed \A from the start and \z from the end?
                with: /([^@\s]+@((?:[a-z0-9]+\.)+[a-z]{2,}))/i
              }
  def to_s
    "#{first_name} #{last_name}"
  end
end

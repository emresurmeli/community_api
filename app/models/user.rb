class User < ApplicationRecord
  # before_create :set_auth_token
  has_secure_password

  validates :password, length: { minimum: 4,
    too_short: "Password must be at least 4 letters long" }
  validates :email, presence: true

  private

    # def set_auth_token
    #   return if auth_token.present?
    #   self.auth_token = generate_auth_token
    # end

    # def generate_auth_token
    #   loop do
    #     token = SecureRandom.hex
    #     break token unless self.class.exists?( auth_token: token )
    #   end
    # end
end

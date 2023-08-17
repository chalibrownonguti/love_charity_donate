class User < ApplicationRecord
    has_secure_password

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :omniauthable, omniauth_providers: [:google_oauth2]


    validates :username, presence: true, uniqueness: { case_sensitive: false, message: "username must be unique" }
    validates :email, presence: true, uniqueness: { case_sensitive: false, message: "email must be unique" }
    validates :password, presence: true, length: { minimum: 6 }


    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
          user.email = auth.info.email
          user.password = Devise.friendly_token[0, 20]
          # You can add more fields here if needed
        end
    end
end

module Authmonk
  class User
    include Mongoid::Document

    devise              :database_authenticatable,
                        :registerable,
                        :recoverable,
                        :rememberable,
                        :trackable,
                        :validatable
                      # :token_authenticatable,
                      # :encryptable,
                      # :confirmable,
                      # :lockable,
                      # :timeoutable,
                      # :omniauthable

    field               :email,                   type: String, null: false, default: ""
    field               :encrypted_password,      type: String, null: false, default: ""

    field               :reset_password_token,    type: String
    field               :reset_password_sent_at,  type: Time

    field               :remember_created_at,     type: Time

    field               :sign_in_count,           type: Integer, default: 0
    field               :current_sign_in_at,      type: Time
    field               :last_sign_in_at,         type: Time
    field               :current_sign_in_ip,      type: String
    field               :last_sign_in_ip,         type: String

    index               :email,                   unique: true

    validates           :email,                   presence: true, uniqueness: true

    attr_accessible     :email,
                        :password,
                        :password_confirmation,
                        :first_name,
                        :last_name
  end
end

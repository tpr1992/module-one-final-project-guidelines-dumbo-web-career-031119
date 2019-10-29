class User < ActiveRecord::Base

  has_many :user_crypto
  has_many :currency, through: :user_crypto

end

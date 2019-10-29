class Cryptocurrency < ActiveRecord::Base

  has_many :user_crypto
  has_many :user, through: :user_crypto

end

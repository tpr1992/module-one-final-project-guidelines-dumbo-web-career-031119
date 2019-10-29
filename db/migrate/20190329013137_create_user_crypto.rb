class CreateUserCrypto < ActiveRecord::Migration[5.0]
  def change
    create_table :user_cryptos do |t|
      t.integer :user_id
      t.integer :crypto_id
    end
  end
end

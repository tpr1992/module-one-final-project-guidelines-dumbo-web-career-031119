class CreateCryptocurrency < ActiveRecord::Migration[5.2]
    def change
      create_table :cryptocurrencies do |t|
        t.string :name
        t.integer :price
      end
  end
end

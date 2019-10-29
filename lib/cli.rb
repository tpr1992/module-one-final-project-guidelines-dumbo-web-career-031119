require 'pry'
class CommandLineInterface
  def run
    user = nil
    Cryptocurrency.destroy_all
    UserCrypto.destroy_all
    User.destroy_all

    system 'clear'
    puts "
    _    _ _____ _     _____ ________  ___ _____
    | |  | |  ___| |   /  __ \  _  |  \/  ||  ___|
    | |  | | |__ | |   | /  \/ | | | .  . || |__
    | |/\| |  __|| |   | |   | | | | |\/| ||  __|
    \  /\  / |___| |___| \__/\ \_/ / |  | || |___
    \/  \/\____/\_____/\____/\___/\_|  |_/\____/
    "

    def create_user
      @user = User.create(username: @name.to_s, password: @password)
      10.times do
        UserCrypto.create(user_id: @user.id, crypto_id: 1)
      end
      10.times do
        UserCrypto.create(user_id: @user.id, crypto_id: 2)
      end
      user = @user
    end

    def menu
      puts "Welcome, #{@user.username}! What would you like to do today?"
      # Welcomes the user by name
      purchase_bitcoin = '₿ 1. Purchase Bitcoin.'
      purchase_ethereum = '₿ 2. Purchase Ethereum.'
      sell_bitcoin = '₿ 3. Sell Bitcoin.'
      sell_ethereum = '₿ 4. Sell Ethereum.'
      check_prices = '₿ 5. Check Prices.'
      check_balance = '₿ 6. Check Balance.'
      report_user = '₿ 7. Report User.'

      puts "#{purchase_bitcoin}\n#{purchase_ethereum}\n#{sell_bitcoin}\n#{sell_ethereum}\n#{check_prices}\n#{check_balance}\n#{report_user}\n\nPress any other key to exit".chomp
      # Gets users selection
      response = gets.chomp
      # Chooses response based off user response
      if response == '1' # Buy
        puts 'Now taking you to the marketplace...'
        sleep(0.5)
        puts '...'
        sleep(1)
        create_currency
        add_bitcoin_to_user

      elsif response == '5'
        create_currency
        check_coin_prices
      end
    end

    def add_user_crypto_btc
      @quantity_amt.times do
        # binding.pry
        UserCrypto.create(user_id: @user.id, crypto_id: 1)
      end
    end

    # Purchase Bitcoin
    def add_bitcoin_to_user
      total = @quantity_amt * Cryptocurrency.find_by(name: 'Bitcoin').price
      total
      puts "Your total will be $#{total}0 for #{@quantity_amt}BTC. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
      answer = gets.chomp.capitalize
      # Press Y to initiate purchase
      add_user_crypto_btc if answer == 'Y'
    end

    def check_coin_prices
      display_bitcoin_price
      binding.pry
    end

    def self.returning_user
      @user = User.find_by(username: @name, password: @password)
      user = @user
    end

    # Intro message
    def initial_prompt
      puts 'Please enter a username and password below to continue:'
      puts 'Please enter a username below to continue:'
      @name = gets.chomp
      puts 'Please enter a password below to continue:'
      @password = gets.chomp
      create_user
      puts 'We have successfully created your account. Enjoy!'
    end
    initial_prompt
    menu

    def create_currency
      Cryptocurrency.create(name: 'Bitcoin', price: 4025)
      Cryptocurrency.create(name: 'Ethereum', price: 138)
    end

    def display_bitcoin_price
      @btc_price = Cryptocurrency.find_by(name: 'Bitcoin').price
      puts "The current USD exchange rate of Bitcoin is $#{@btc_price}0."
    end

    test = true
    # while test
  end
end

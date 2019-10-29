# require 'pry'
# class CommandLineInterface
#   # User.destroy_all
#
#
#
#   def welcome
#     binding.pry
#     Cryptocurrency.destroy_all
#     UserCrypto.destroy_all
#     User.destroy_all
#     # CryptoCurrency.create(price: 4025, name: "Bitcoin", symbol: "BTC")
#     # CryptoCurrency.create(price: 138, name: "Ethereum", symbol: "ETH")
#     # Wallet.destroy_all
#     system "clear"
#     puts "
#     _    _ _____ _     _____ ________  ___ _____
#     | |  | |  ___| |   /  __ \  _  |  \/  ||  ___|
#     | |  | | |__ | |   | /  \/ | | | .  . || |__
#     | |/\| |  __|| |   | |   | | | | |\/| ||  __|
#     \  /\  / |___| |___| \__/\ \_/ / |  | || |___
#     \/  \/\____/\_____/\____/\___/\_|  |_/\____/
#     "
#
#     def create_user
#       new_user = User.create(username: "#{@name}", password: @pass)
#       10.times do
#         UserCrypto.new(user_id: new_user.id, crypto_id: 1)
#       end
#       10.times do
#         UserCrypto.new(user_id: new_user.id, crypto_id: 2)
#       end
#     end
#
#
#     # Intro message
#     def initial_prompt
#       puts 'If you do not already have an account a new one will be created for you with the information given below.'
#       puts 'Please enter a username below to continue:'
#       @name = gets.chomp
#       puts 'Please enter a password below to continue:'
#       @pass = gets.chomp
#
#       # Search database to check if user info exists
#       @user = User.find_by(username: @name, password: @pass)
#       binding.pry
#       # If they do not (search returns nil) then a new account is made with info
#       if @user == nil
#         create_user
#         puts "We have successfully created your account. Enjoy!"
#       else
#         # has_account = User.where(user_username: @name)
#         # If they do exist it connects to that account
#         puts "Welcome back #{@user.username}. Enjoy!"
#       end
#       @user
#     end
#     initial_prompt
#
#     def create_currency
#       # if Currency.destroy_all
#         Currency.create(price: 4025, name: "Bitcoin", symbol: "BTC")
#         Currency.create(price: 138, name: "Ethereum", symbol: "ETH")
#     end
#
# # TO DO
#   # def check_duplicate_user
#   #   if User.exists(username: @name) > 1
#   #
#   # end
#
#
#     # def delete_wallet
#     #   Wallet.find_by(user_id: @user.id).destroy
#     # end
#
#
#     test = true
#     while test
#       puts "Welcome, #{@user.username}! Your current balance is: $#{@user.balance}0. What would you like to do today?"
#       # Welcomes the user by name
#       purchase_bitcoin = '₿ 1. Purchase Bitcoin.'
#       purchase_ethereum = '₿ 2. Purchase Ethereum.'
#       sell_bitcoin = '₿ 3. Sell Bitcoin.'
#       sell_ethereum = '₿ 4. Sell Ethereum.'
#       check_prices = '₿ 5. Check prices.'
#       delete_your_account = '₿ 6. Delete Wallet.'
#
#       #gives options
#
#       puts "#{purchase_bitcoin}\n#{purchase_ethereum}\n#{sell_bitcoin}\n#{sell_ethereum}\n#{check_prices}\n#{delete_your_account}\n\nPress any other key to exit".chomp
#       # Gets users selection
#       response = gets.chomp
#       # Chooses response based off user response
#       if response == '1' # Buy
#         puts 'Now taking you to the marketplace...'
#         sleep(0.5)
#         puts "..."
#         sleep(1)
#
#
#         def display_bitcoin_price
#           puts "The current USD exchange rate of Bitcoin (#{@btc.symbol}) is $#{@btc.price}0/#{@btc.symbol}."
#         end
#         display_bitcoin_price
#
#         puts "How much would you like to purchase?"
#         @quantity_amt = gets.chomp.to_i
#
#
#         # Purchase Bitcoin
#         def add_bitcoin_to_user
#           total = @quantity_amt * @btc.price
#           total
#           puts "Your total will be $#{total}0 for #{@quantity_amt}BTC. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#           answer = gets.chomp.capitalize
#
#           # Press Y to initiate purchase
#           if answer == 'Y'
#             # @user_btc_wallet = Wallet.create(user_id: @user.id, currency_id: @btc.id, balance: @user.btc_quant, address: Faker::Blockchain::Bitcoin.address)
#             # Check if user has any bitcoin already
#             # If the users wallet exists, update the wallet
# binding.pry
#             if @user_btc_wallet.user_id = @user.id
#
#
#               new_total = @user_btc_wallet.balance + @quantity_amt
#               binding.pry
#               @user_btc_wallet.update(balance: new_total)
#
#
#           else
#             @user_btc_wallet = Wallet.find_by(user_id: @user.id, currency_id: @btc.id)
#             # user_btc_wallet
#             @user_btc_wallet.update(balance: @quantity_amt + @user_btc_wallet.balance)
#             # @user.update(btc_quant: @quantity_amt + @user.btc_quant)
#           end
#
#
#             # if Wallet.currency_id = nil
#             if total > @user.balance
#               sleep(1)
#               puts "\n\n\nSorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction.\n\n\n -----------------------------------------------------------------\n\n\n"
#             else
#               # Update user balance to reflect purchases
#               updated_total = @user.balance - total
#               coin_quant = @quantity_amt + @user.btc_quant
#               @user.update(balance: updated_total)
#               @user.update(btc_quant: coin_quant)
#               sleep(1)
#               puts "Processing your order..."
#               3.times do sleep(0.5)
#                 puts "..."
#               end
#               sleep(1)
#               puts "\n\n\nYou now have #{@user_btc_wallet.balance}#{@btc.symbol}. Your new account balance is now $#{updated_total}0. Thank you for your business!\n\n\n -----------------------------------------------------------------\n\n\n"
#
#
#               # def create_wallet(id, curr_id, bal, addres)
#
#             end
#           else
#             sleep(0.5)
#             puts "Sorry we couldn't sell you anything today!"
#             sleep(0.5)
#             puts "Bye!"
#           end
#         end
#         add_bitcoin_to_user
#
#
#       ### Buy ETH
#       elsif response == '2'
#         puts 'Now taking you to the marketplace...'
#         sleep(0.5)
#         puts "..."
#         sleep(1)
#
#         ##########################
#
#         def display_eth_price
#           puts "The current USD exchange rate of Ethereum (#{@eth.symbol}) is $#{@eth.price}0/#{@eth.symbol}."
#         end
#         display_eth_price
#
#         puts "How much would you like to purchase?"
#         @quantity_amt = gets.chomp.to_i
#         # def add_eth_to_user
#         #   total = @quantity_amt * @eth.price
#         #   total
#         #   puts "Your total will be $#{total}0 for #{@quantity_amt}#{@eth.symbol}. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#         #   answer = gets.chomp.capitalize
#         #
#         #   # Press Y to initiate purchase
#         #   if answer == 'Y'
#         #     # Check if user has any bitcoin already
#         #     if @user.eth_quant == 0
#         #
#         #     # user_eth_wallet = Wallet.create(user_id: @user.id, currency_id: @eth.id, balance: @user.eth_quant, address: Faker::Blockchain::Bitcoin.address)
#         #     user_eth_wallet
#         #     user_eth_wallet.update(balance: @quantity_amt)
#         #     @user.update(eth_quant: @quantity_amt + @user.eth_quant)
#         #
#         #   else
#         #     user_eth_wallet = Wallet.find_by(user_id: @user.id, currency_id: @eth.id)
#         #     user_eth_wallet
#         #     user_eth_wallet.update(balance: @quantity_amt + user_eth_wallet.balance)
#         #     # @user.update(btc_quant: @quantity_amt + @user.btc_quant)
#         #   end
#         #
#         #
#         #     # if Wallet.currency_id = nil
#         #     if total > @user.balance
#         #       sleep(1)
#         #       puts "\n\n\nSorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction.\n\n\n -----------------------------------------------------------------\n\n\n"
#         #     else
#         #       # Update user balance to reflect purchases
#         #       updated_total = @user.balance - total
#         #       @user.update(balance: updated_total)
#         #       @user.update(eth_quant: @quantity_amt)
#         #       sleep(1)
#         #       puts "Processing your order..."
#         #       3.times do sleep(0.5)
#         #         puts "..."
#         #       end
#         #       sleep(1)
#         #       puts "\n\n\nYou now have #{user_eth_wallet.balance}#{@eth.symbol}. Your new account balance is now $#{updated_total}0. Thank you for your business!\n\n\n -----------------------------------------------------------------\n\n\n"
#         #
#         #     end
#         #   else
#         #     sleep(0.5)
#         #     puts "Sorry we couldn't sell you anything today!"
#         #     sleep(0.5)
#         #     puts "Bye!"
#         #   end
#         # end
#         # add_eth_to_user
#
#         def add_eth_to_user
#           total = @quantity_amt * @eth.price
#           total
#           puts "Your total will be $#{total}0 for #{@quantity_amt}ETH. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#           answer = gets.chomp.capitalize
#
#           # Press Y to initiate purchase
#           if answer == 'Y'
#             # @user_btc_wallet = Wallet.create(user_id: @user.id, currency_id: @btc.id, balance: @user.btc_quant, address: Faker::Blockchain::Bitcoin.address)
#             # Check if user has any bitcoin already
#             # If the users wallet exists, update the wallet
#
#             if @user_eth_wallet.user_id = @user.id
#
#
#               new_total = @user_eth_wallet.balance + @quantity_amt
#               # binding.pry
#               @user_eth_wallet.update(balance: new_total)
#
#
#           else
#             @user_eth_wallet = Wallet.find_by(user_id: @user.id, currency_id: @eth.id)
#             # user_btc_wallet
#             @user_eth_wallet.update(balance: @quantity_amt + @user_eth_wallet.balance)
#             # @user.update(btc_quant: @quantity_amt + @user.btc_quant)
#           end
#
#
#             # if Wallet.currency_id = nil
#             if total > @user.balance
#               sleep(1)
#               puts "\n\n\nSorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction.\n\n\n -----------------------------------------------------------------\n\n\n"
#             else
#               # Update user balance to reflect purchases
#               updated_total = @user.balance - total
#               coin_quant = @quantity_amt + @user.btc_quant
#               @user.update(balance: updated_total)
#               # @user.update(eth_quant: coin_quant)
#               sleep(1)
#               puts "Processing your order..."
#               3.times do sleep(0.5)
#                 puts "..."
#               end
#               sleep(1)
#               puts "\n\n\nYou now have #{@user_eth_wallet.balance}#{@eth.symbol}. Your new account balance is now $#{updated_total}0. Thank you for your business!\n\n\n -----------------------------------------------------------------\n\n\n"
#
#
#               # def create_wallet(id, curr_id, bal, addres)
#
#             end
#           else
#             sleep(0.5)
#             puts "Sorry we couldn't sell you anything today!"
#             sleep(0.5)
#             puts "Bye!"
#           end
#         end
#         add_eth_to_user
#
#
#         ######################
#         ######################
#         ###################
#         ################
#         ############
#
#
#         # def display_eth_price
#         #   puts "The current USD exchange rate of Ethereum (#{@eth.symbol}) is $#{@eth.price}0/#{@eth.symbol}."
#         # end
#         # display_eth_price
#         #
#         # puts "How much would you like to purchase?"
#         # @quantity_amt = gets.chomp.to_i
#
#         # def add_eth
#         #   total = @quantity_amt * @eth.price
#         #   total
#         #   puts "Your total will be $#{total}0 for #{@quantity_amt}ETH. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#         #   answer = gets.chomp.capitalize
#         #   if answer == 'Y'
#         #     if total > @user.balance
#         #       sleep(1)
#         #       puts "\n\n\nSorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction.\n\n\n -----------------------------------------------------------------\n\n\n"
#         #     else
#         #       updated_total = @user.balance - total
#         #       @user.update(balance: updated_total)
#         #       @user.update(eth_quant: @quantity_amt)
#         #       sleep(1)
#         #       puts "Processing your order..."
#         #       3.times do sleep(0.5)
#         #         puts "..."
#         #       end
#         #       sleep(1)
#         #       puts "\n\n\nYou now have #{@user.eth_quant}#{@eth.symbol}. Your new account balance is now $#{updated_total}0. Thank you for your business!\n\n\n -----------------------------------------------------------------\n\n\n"
#         #           Wallet.create(user_id: @user.id, currency_id: @eth.id, balance: @user.eth_quant, address: Faker::Blockchain::Bitcoin.address)
#         #     end
#         #   else
#         #     sleep(0.5)
#         #     puts "Sorry we couldn't sell you anything today!"
#         #     sleep(0.5)
#         #     puts "Bye!\n\n\n -----------------------------------------------------------------\n\n\n"
#         #   end
#         # end
#         # add_eth
#
# ######################
# ####################
# ##################
#
#
#
#         # Sell BTC
#         ### Working
#       elsif response == '3'
#         puts 'Now taking you to the marketplace...'
#         sleep(0.5)
#         puts "..."
#         sleep(1)
#
#         def display_bitcoin_price_for_sale
#           puts "The current USD exchange rate of Bitcoin (#{@btc.symbol}) is $#{@btc.price}0/#{@btc.symbol}."
#         end
#         display_bitcoin_price_for_sale
#         puts "You have #{@user_btc_wallet.balance}#{@btc.symbol} available. How much would you like to sell?"
#         @quantity_amt = gets.chomp.to_i
#
#         def remove_bitcoin_from_user
#           # quantity = Wallet.find_by(user_id: @user.id).balance
#           total = @quantity_amt * @btc.price
#           # total = @quantity * @btc.price
#
#           total
#           puts "The total amount credited to you will be $#{total}0 for #{@quantity_amt}BTC. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#           answer = gets.chomp.capitalize
#
#           if answer == 'Y'
#             # Check if
#             if @user.btc_quant < @quantity_amt
#               # binding.pry
#               sleep(1)
#               puts "Processing your order..."
#               3.times do sleep(0.5)
#                 puts "..."
#               end
#               sleep(1)
#               # binding.pry
#               puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction.\n\n\n -----------------------------------------------------------------\n\n\n"
#             else
#               updated_total = @user.balance + total
#               # binding.pry
#               @user_btc_wallet = Wallet.find_by(user_id: @user.id)
#               @user_btc_wallet.update(balance: @user.btc_quant - @quantity_amt)
#               @user.update(balance: updated_total)
#               @user.update(btc_quant: @user.btc_quant - @quantity_amt)
#               end
#
#               sleep(1)
#               puts "Processing your order..."
#               3.times do sleep(0.5)
#                 puts "..."
#               end
#               sleep(1)
#               puts "\n\n\nYou now have #{@user_btc_wallet.balance}#{@btc.symbol}. Your new account balance is #{updated_total}0. Thank you for your business!\n\n\n -----------------------------------------------------------------\n\n\n"
#               wallet = Wallet.find_by(user_id: @user.id)
#               wallet.update(balance: wallet.balance - @quantity_amt)
#
#           else
#             sleep(0.5)
#             puts "Sorry we couldn't sell you anything today!"
#             sleep(0.5)
#             puts "Bye!\n\n\n -----------------------------------------------------------------\n\n\n"
#           end
#         end
#         remove_bitcoin_from_user
#
#
#         # Sell ETH
#         ### Working
#       elsif response == '4'
#         puts 'Now taking you to the marketplace...'
#         sleep(0.5)
#         puts "..."
#         sleep(1)
#
#         def display_eth_price_for_sale
#           puts "The current USD exchange rate of Ethereum (#{@eth.symbol}) is $#{@eth.price}0/#{@eth.symbol}."
#         end
#         display_eth_price_for_sale
#
#         puts "You have #{@user.eth_quant}#{@eth.symbol} available. How much would you like to sell?"
#         @quantity_amt = gets.chomp.to_i
#
#         def remove_eth_from_user
#           total = @quantity_amt * @eth.price
#           total
#           puts "The total amount credited to you will be $#{total}0 for #{@quantity_amt}ETH. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#           answer = gets.chomp.capitalize
#           if answer == 'Y'
#             if @user.eth_quant < @quantity_amt
#               sleep(1)
#               puts "Processing your order..."
#               3.times do sleep(0.5)
#                 puts "..."
#               end
#               sleep(1)
#               # binding.pry
#               puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
#             else
#               updated_total = @user.balance + total
#               @user.update(balance: updated_total)
#               @user.update(eth_quant: @user.eth_quant - @quantity_amt)
#               sleep(1)
#               puts "Processing your order..."
#               3.times do sleep(0.5)
#                 puts "..."
#               end
#               sleep(1)
#               puts "\n\n\nYou now have #{@user.eth_quant}#{@eth.symbol}. Your new account balance is $#{updated_total}0. Thank you for your business!\n\n\n -----------------------------------------------------------------\n\n\n"
#             end
#           else
#             sleep(0.5)
#             puts "Sorry we couldn't sell you anything today!"
#             sleep(0.5)
#             puts "Bye!\n\n\n -----------------------------------------------------------------\n\n\n"
#           end
#         end
#         remove_eth_from_user
#
#         ##############################
#
#         # Reference and display coin prices
#       elsif response == '5'
#         sleep(1)
#         puts "Checking prices..."
#         # puts "\n\n\nThe current price of #{@btc.name} is $#{@btc.price}0.\nThe current price of #{@eth.name} is $#{@eth.price}0.\n\n\n"
#         sleep(1)
#         puts "Connecting to database..."
#         3.times do sleep(0.5)
#           puts "..."
#         end
#         if @user.btc_quant > 0 && @user.eth_quant == 0
#           puts "\n\n\nYou have an inventory of #{@user.btc_quant}#{@btc.symbol} at an average price of $#{@btc.price}0/#{@btc.symbol}.\n\nThe current price of #{@eth.name} is $#{@eth.price}0.\n\n\n -----------------------------------------------------------------\n\n\n"
#         elsif @user.eth_quant > 0 && @user.btc_quant == 0
#           puts "\n\n\nYou have an inventory of #{@user.eth_quant}#{@eth.symbol} at an average price of $#{@eth.price}0/#{@eth.symbol}.\n\nThe current price of #{@btc.name} is $#{@btc.price}0.\n\n\n -----------------------------------------------------------------\n\n\n"
#         elsif @user.btc_quant == 0 && @user.eth_quant == 0
#           puts "\n\n\nYour inventory is currently empty. The average price of of #{@btc.name} is $#{@btc.price}0/#{@btc.symbol}, and the average price of #{@eth.name} is $#{@eth.price}0/#{@eth.symbol}.\n\n\n -----------------------------------------------------------------\n\n\n"
#         else
#           puts "\n\n\nYou have an inventory of #{@user.btc_quant}#{@btc.symbol} at an average price of $#{@btc.price}0/#{@btc.symbol}, and #{@user.eth_quant}#{@eth.symbol} at an the average price of #{@eth.price}0/#{@eth.symbol}.\n\n\n -----------------------------------------------------------------\n\n\n"
#         end
#
#
#         # Delete Account
#         elsif response == '6'
#           3.times do sleep(0.5)
#             puts "..."
#           end
#           puts "Are you sure you want to delete your account? This will clear all of your inventory and credentials. Please press 'Y' to confirm and any other key to cancel."
#           response = gets.chomp
#           if response == 'y'
#             wallet_arr = Wallet.where(user_id: @user.id)
#             binding.pry
#             puts wallet_arr
#             if wallet_arr.length == 1
#               3.times do sleep(0.5)
#                 puts "..."
#               end
#               puts "Now deleting your account."
#               delete_your_account
#             elsif wallet_arr.length > 1
#               puts "You have more than one wallet. Please specify which wallet you want to delete."
#
#             end
#           else
#             3.times do sleep(0.5)
#               puts "..."
#             end
#             puts "Now taking you back to the menu."
#             3.times do sleep(0.5)
#               puts "..."
#             end
#           end
#
#
#       else
#         test = false
#       end
#     end
#   end
# end

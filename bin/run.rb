require_relative '../config/environment'
require 'pry'

#### Version 2 with DB
# cli2 = CommandLineInterfaceVer2.new
# cli2.welcome
#
#### Version 3
username = nil

cli = CommandLineInterface.new
cli.run

require_relative 'controllers/CalcController'

menu = CalcController.new

system "clear"
puts "Welcome to your new calculator!"

menu.main_menu

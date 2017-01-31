require 'csv'
require_relative("./csv_tool.rb") #file with working functions
# csv = './reservation_transactions_small.csv'


puts
puts "*Reservation Extract Tool*"
puts 
puts "Enter file path (c:/tool/please/work/file.csv): "
csv = gets.chomp
puts


puts "What would you like to do?"
puts

while true

  puts "Options: "
  puts " q) Exit"
  puts " c) Change file"
  puts " 1) Show total number of customers"
  puts " 2) Show total number of guests (reservations)"
  puts " 3) Show number of guests with deposit"
  puts " 4) Find guest using e-mail address"
  puts " 5) Find guest using booking ID"

  choice = gets.chomp
  if choice == "q"
    puts "Exit Tool"
    break
  elsif choice == "c"
    puts "Enter file path (c:/tool/please/work/file.csv): "
    csv = gets.chomp
  elsif choice == "1"
    puts "Total Customers: "
    puts find_total_customers(csv) #function
  elsif choice == "2"
    puts "Total Guests/Reservations: "
    puts find_total_guests(csv) #function
  elsif choice == "3"
    puts "Number of Guests with Deposit: "
    puts find_total_guests_with_deposit(csv) #function
  elsif choice == "4"
    puts "Type in e-mail: "
    email = gets.chomp
    if email.length == 0
     puts "E-mail cannot be blank" #considers blank user input
    else
     puts find_guest_by_email(email, csv) #function
   end
   elsif choice == "5"
    puts "Type in booking ID: "
    booking_id = gets.chomp
    if booking_id == 0
      puts "Booking ID cannot be blank" #considers blank user input
    else 
      puts find_guest_by_booking_id(booking_id, csv)
  end
  end
  puts
  puts
end
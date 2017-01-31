#"CSV.foreach" iterates over each row, rather than reading file to memory

def find_total_customers(csv)
  total_customers = 0
  CSV.foreach(csv, headers:true) do |guest|
    if guest["email"].to_s.empty? == false
      total_customers += 1 #uses counter rather than storing guest info in array
    end
  end
  return total_customers
end


def find_total_guests(csv)
  total_guests = 0
  CSV.foreach(csv, headers:true) do |guest|
    total_guests += 1 #uses counter rather than storing guest info in array
    end
    return total_guests
end


def find_total_guests_with_deposit(csv)
  total_deposits = []
  CSV.foreach(csv, headers:true) do |guest|
   if guest["deposit_value"].to_s.empty? == false #stored info in array, as may be useful in later code
    total_deposits << guest
    end
  end
  return total_deposits.count()
end


def find_guest_by_email(email, csv)
  match = nil
  CSV.foreach(csv, headers:true) do |guest|
    if guest["email"].to_s.downcase() == email.downcase() #downcase considers capitalisation 
      match = guest
      break 
    else 
      match = "no match found" 
    end
  end
  return match
end 


def find_guest_by_booking_id(booking_id, csv)
  match = nil
  CSV.foreach(csv, headers:true) do |guest|
    if guest["reservation_confirmation_number"].to_s.downcase() == booking_id.downcase()
      match = guest
      break
    else 
      match = "no match found"
    end
  end
  return match
end 

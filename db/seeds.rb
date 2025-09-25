# Rooms
Room.create!(number: "24", room_type: 0, price: 50000, status: 0) 
Room.create!(number: "13", room_type: 1, price: 80000, status: 0)
Room.create!(number: "30", room_type: 0, price: 65000, status: 0) 
Room.create!(number: "23", room_type: 1, price: 95000, status: 0)
Room.create!(number: "34", room_type: 0, price: 70000, status: 0)
Room.create!(number: "03", room_type: 1, price: 85000, status: 0)
Room.create!(number: "08", room_type: 1, price: 80000, status: 0)
Room.create!(number: "01", room_type: 1, price: 90000, status: 0)

puts "Rooms created!"
# Guests
Guest.create!(first_name: "Pepito", last_name: "Almeja", email: "pepAlmeja@miuandes.cl", phone: "+56 9 12345678", document_id: "12345678-9")
Guest.create!(first_name: "Enzo", last_name: "Palavicino", email: "empalavicino@miuandes.cl", phone: "+56 9 42414039", document_id: "21525825-4")
Guest.create!(first_name: "Michael", last_name: "Jordan", email: "GOAT@nba.com", phone: "+56 9 45239698", document_id: "23969893-1")
Guest.create!(first_name: "Lebron", last_name: "James", email: "KingJames@nba.com", phone: "+56 9 46001122", document_id: "23062003-6")
Guest.create!(first_name: "Kobe", last_name: "Bryant", email: "BlackMamba@nba.com", phone: "+56 9 24010201", document_id: "24824824-8")
Guest.create!(first_name: "Stephen", last_name: "Curry", email: "chefcurry@nba.com", phone: "+56 9 15999030", document_id: "30303030-3")
Guest.create!(first_name: "Giannis", last_name: "Antetokounmpo", email: "thegreekfreak@nba.com", phone: "+56 9 21055024", document_id: "30243434-5")
Guest.create!(first_name: "Shaquille", last_name: "O'Neal", email: "shaqattack@nba.com", phone: "+56 9 23343434", document_id: "34343434-4")

puts "Guests created!"

# Reservations Here i used Date.today to make it, it looks more realistic for my checkins and check-outs
Reservation.create!(code: "KB24", guest_id: 1, room_id: 1, check_in: Date.today, check_out: Date.today + 3, status: 0, adults: 2, children: 0)
Reservation.create!(code: "SC30", guest_id: 1, room_id: 1, check_in: Date.today, check_out: Date.today + 2, status: 0, adults: 2, children: 1)
Reservation.create!(code: "MJ23", guest_id: 2, room_id: 2, check_in: Date.today + 2, check_out: Date.today + 5, status: 0, adults: 1, children: 0)
Reservation.create!(code: "LJ06", guest_id: 3, room_id: 3, check_in: Date.today + 1, check_out: Date.today + 4, status: 0, adults: 2, children: 2)

puts "Reservations created!"

# Services
Service.create!(name: "Basketball Court", price: 15000, is_active: true)
Service.create!(name: "Spa", price: 5000, is_active: true)
Service.create!(name: "GYM", price: 20000, is_active: true)
Service.create!(name: "Laundry", price: 5000, is_active: true)

puts "Services created!"

# Service Usage And here i used DateTime.now to make it again just to have date upgrades
ServiceUsage.create!(reservation_id: 1, service_id: 1, quantity: 1, used_at: DateTime.now, note: "Full massage")
ServiceUsage.create!(reservation_id: 1, service_id: 1, quantity: 1, used_at: DateTime.now, note: "Shooting practice")

puts "Service Usages created!"

# Invoices
Invoice.create!(reservation_id: 1, nights_subtotal: 150, services_subtotal: 200, tax: 323, total: 203, issued_at: DateTime.now + 1, status: "issued")
Invoice.create!(reservation_id: 2, nights_subtotal: 154, services_subtotal: 210, tax: 321, total: 201, issued_at: DateTime.now, status: "paid")

puts "Invoices created!"
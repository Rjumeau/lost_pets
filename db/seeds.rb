# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts 'Destroy Pets...'
# clean DB before add new pets
Pet.destroy_all

puts 'Create Pets...'
Pet.new(name: 'Simba', address: '45 rue Dupont', species: 'cat', found_on: Date.new(2023, 8, 5)).save
Pet.new(name: 'Snoopy', address: '115 villa Gaudelet', species: 'dog', found_on: Date.new(2023, 8, 1)).save
puts 'Done!'

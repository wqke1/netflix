# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Attention ça va commencer"
users = User.create([{ email: 'test@test' }, { password: "secret" }, { phone: "0620661124" }, { name: "wqkerino" }])
puts "gg mgl"

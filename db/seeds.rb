# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all

data = [{title: "MJ Hug", description: "Championship trophy hug", detail: "Have you ever won a national championship?  If so, you would hug that trophy just as hard.", price: 10.00}, {title: "Awkward High Five", description: "Incredibly awkard", detail: "Perfect for professional settings or when mingling with uncoordinated/unathlethic people.", price: 8.00}, {title: "Lingering Hug", description: "That creepy hug that lasts just a bit too long.", detail: "Perfect for distant relatives, ex-girlfriends, or even new acquaintences!", price: 25.00}]

data.each do |product_info|
  m = Product.new
  m.title = product_info[:title]
  m.description = product_info[:description]
  m.detail = product_info[:detail]
  m.price = product_info[:price]
  m.save
end

puts "There are now #{Product.count} products in the database"

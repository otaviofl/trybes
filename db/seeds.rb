# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "initializing seed"

User.destroy_all
Supplier.destroy_all
Category.destroy_all
Experience.destroy_all


users = {
  otavio: { name:"Otavio", email: "ot@ot.com", password: "123456", picture_avatar: "urla", picture_banner: "urlb", password_confirmation: "123456" },
  claudio: { name:"Claudio", email:"cl@cl.com", password: "123456", picture_avatar: "urla", picture_banner: "urlb", password_confirmation: "123456" },
  renato: { name:"Renato", email:"re@re.com", password: "123456", picture_avatar: "urla", picture_banner: "urlb", password_confirmation: "123456" }
}


users.each do |user, value|
     User.create!(name: value[:name], email: value[:email], password: value[:password], password_confirmation: value[:password], picture_avatar: value[:picture_avatar], picture_banner: value[:picture_banner])
  end


suppliers = {
  yoga1: {name:"Yoga Place1", email: "yo@yo.com", picture_avatar: "urla", picture_banner: "urlb",
          rating: "4", location: "Rio", phone: "021-2266-6622", facebook: "facebook.yoga1.link",
          web_address: "www.yoga_link1.com" },

  yoga2: {name:"Yoga Place2", email: "ya@ya.com", picture_avatar: "urla", picture_banner: "urlb",
          rating: "4", location: "Rio", phone: "021-2366-6622", facebook: "facebook.yoga2.link",
          web_address: "www.yoga_link2.com" },

  diving1: {name:"Dive Place1", email: "di@di.com", picture_avatar: "urla", picture_banner: "urlb",
            rating: "5", location: "Rio", phone: "021-3366-6633", facebook: "facebook.diving1.link",
            web_address: "www.diving_link1.com" },

  diving2: {name:"Dive Place1", email: "dv@dv.com", picture_avatar: "urla", picture_banner: "urlb",
            rating: "5", location: "Rio", phone: "021-3466-6633", facebook: "facebook.diving2.link",
            web_address: "www.diving_link2.com" },

  pilates1: {name:"Pilates Place1", email: "pl@pl.com", picture_avatar: "urla", picture_banner: "urlb",
            rating: "3", location: "Rio", phone: "021-4466-6644", facebook: "facebook.pilates1.link",
            web_address: "www.pilates_link1.com" },

  pilates2: {name:"Pilates Place2", email: "pl@pl.com", picture_avatar: "urla", picture_banner: "urlb",
            rating: "3", location: "Rio", phone: "021-4566-6644", facebook: "facebook.pilates2.link",
            web_address: "www.pilates_link2.com" }
}

suppliers.each do |supplier, value|
     Supplier.create!(name: value[:name], email: value[:email],  picture_avatar: value[:picture_avatar],
                      picture_banner: value[:picture_banner], rating: value[:rating], location: value[:location],
                      phone: value[:phone], facebook: value[:facebook], web_address: value[:web_address])
  end


categories = {
  yoga: {name:"Yoga"},
  diving: {name:"Diving"},
  pilates: {name:"Pilates"}
}

categories.each do |category, value|
     Category.create!(name: value[:name])
  end


yoga_supplier = Supplier.all.sample
yoga_category = Category.first
diving_supplier = Supplier.all.sample
diving_category = Category.second
pilates_supplier = Supplier.all.sample
pilates_category = Category.third

experiences = {
  yoga_class_1: {supplier: yoga_supplier, category: yoga_category, description: "<Long description>",
                start: "15/12/2018", finish: "16/12/2018", address: "ladeira da gloria, 26, rio de janeiro",
                price: 222, title: "Title yoga1", short_title: "short yoga1 description to title",
                vacancy: "number_integer_y1", short_description: "short yoga1 description"},

  yoga_class_2: {supplier: yoga_supplier, category: yoga_category, description: "<Long description>",
                start: "11/12/2018", finish: "11/12/2018", address: "ladeira da gloria, 226, rio de janeiro",
                price: 303, title: "Title yoga2", short_title: "short yoga2 description to title",
                vacancy: "number_integer_y2", short_description: "short yoga2 description"},

  diving_class_1: {supplier: diving_supplier, category: diving_category, description: "<Long description>",
                  start: "16/12/2018", finish: "17/12/2018", address: "ladeira da gloria, 27, rio de janeiro",
                  price: 300, title: "Title diving1", short_title: "short diving1 description to title",
                  vacancy: "number_integer_d1", short_description: "short diving1 description"},

  diving_class_2: {supplier: diving_supplier, category: diving_category, description: "<Long description>",
                  start: "12/12/2018", finish: "12/12/2018", address: "ladeira da gloria, 227, rio de janeiro",
                  price: 200, title: "Title diving2", short_title: "short diving2 description to title",
                  vacancy: "number_integer_d2", short_description: "short diving2 description"},

  pilates_class_1: {supplier: pilates_supplier, category: pilates_category, description: "<Long description>",
                    start: "17/12/2018", finish: "18/12/2018", address: "ladeira da gloria, 28, rio de janeiro",
                    price: 202, title: "Title pilates1", short_title: "short pilates1 description to title",
                    vacancy: "number_integer_p1", short_description: "short pilates1 description"},

  pilates_class_2: {supplier: pilates_supplier, category: pilates_category, description: "<Long description>",
                    start: "17/12/2018", finish: "18/12/2018", address: "ladeira da gloria, 228, rio de janeiro",
                    price: 303, title: "Title pilates2", short_title: "short pilates2 description to title",
                    vacancy: "number_integer_p2", short_description: "short pilates2 description"}
}

experiences.each do |experience, value|
     Experience.create!(description: value[:description], address: value[:address], start: value[:start],
      finish: value[:finish], supplier: value[:supplier], category: value[:category], price: value[:price],
      title: value[:title], short_title: value[:short_title], vacancy: value[:vacancy],
      short_description: value[:short_description])
  end




# supplier1 = Supplier.create

# Experience.create(supplier: supplier1)

puts "seed db created"

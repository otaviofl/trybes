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
  yoga: {name:"Yoga Place", email: "yo@yo.com", picture_avatar: "urla", picture_banner: "urlb",
        rating: "4", location: "Rio", phone: "021-2266-6622", facebook: "facebook.yoga.link",
        web_address: "www.yoga_link.com" },

  diving: {name:"Dive Place", email: "di@di.com", picture_avatar: "urla", picture_banner: "urlb",
          rating: "5", location: "Rio", phone: "021-3366-6633", facebook: "facebook.diving.link",
          web_address: "www.diving_link.com" },

  pilates: {name:"Pilates Place", email: "pl@pl.com", picture_avatar: "urla", picture_banner: "urlb",
            rating: "3", location: "Rio", phone: "021-4466-6644", facebook: "facebook.pilates.link",
            web_address: "www.pilates_link.com" }
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


yoga_supplier = Supplier.first
yoga_category = Category.first
diving_supplier = Supplier.second
diving_category = Category.second
pilates_supplier = Supplier.third
pilates_category = Category.third

experiences = {
  yoga_class_1: {supplier: yoga_supplier, category: yoga_category, description: "<Long description>",
  start: "15/12/2018", finish: "16/12/2018", address: "ladeira da gloria, 26, rio de janeiro",
  price: "value_y", title: "Title yoga", short_title: "short yoga description to title",
  vacancy: "number_integer_y1", short_description: "short yoga description"},

  diving_class_1: {supplier: diving_supplier, category: diving_category, description: "<Long description>",
  start: "16/12/2018", finish: "17/12/2018", address: "ladeira da gloria, 27, rio de janeiro",
  price: "value_d", title: "Title diving", short_title: "short diving description to title",
  vacancy: "number_integer_d1", short_description: "short diving description"},

  pilates_class_1: {supplier: pilates_supplier, category: pilates_category, description: "<Long description>",
  start: "17/12/2018", finish: "18/12/2018", address: "ladeira da gloria, 28, rio de janeiro",
  price: "value_p", title: "Title pilates", short_title: "short pilates description to title",
  vacancy: "number_integer_p1", short_description: "short pilates description"}
}

experiences.each do |experience, value|
     Experience.create!(description: value[:description], address: value[:address], start: value[:start],
      finish: value[:finish], supplier: value[:supplier], category: value[:category], price: value[:price_cents],
      title: value[:title], short_title: value[:short_title], vacancy: value[:vacancy],
      short_description: value[:short_description])
  end



# Experience >> Card page 1
#  XDivers
# 1-/supplier_banner/ Image-banner: cloundinary_img
# 2-/exp_title/ Title - H1: Four dives in Angra dos Reis!
# 3-/exp_description/ Description - p: "December has arrived! Come and dive with us. Let's get the chat and skills up to date. We will be staying at Recanto do Bem-te-vi, and going out with the best scuba operator of Costa Verde, Sotto Mare - Diving Center. We still have some vacancies, who is in"
# 4-/exp_shorttitle/ Heads-Up - h2: Limited vacancies. Cost for two dives per day. Experience for all levels of certification
# 5-/exp_price_cents/ price_cents: R$350,00
# 6-/exp_vacancy/ Vacancy: (como mostrar total e vagas ocupadas) 33
# 7-/exp_start/ Data Inicio: 15Dez
# 8-/exp_finish/ Data termino:16Dez


# Card page 2
# 9-/supplier_avatar/ Image-avatar: cloundinary_img
# 10-/supplier_id/ Nome - H1: XDivers Scuba School
# 11-/exp_address/ Address - H2 (sub title): Scuba Diving Center in Rio de Janeiro Endereço: Rua Visconde de Pirajá 550 Sala 1113 (7,69 km)
# 12-/exp_short_description/ Short_description - p: "Courses, trips and equipment sales. Everything for those who are passionate about the sea!" 22460-190 Rio de Janeiro
# 13-/supplier_phone/ Telefone: (21) 3902-6002
# 14-/supplier_email/ e-mail:
# 15-/supplier_facebook/ facebook: https://www.facebook.com/xdivers/ 
# 16-/supplier_web_address/ website: www.xdivers.com.br 
# 17-/supplier_rating/ rating: 5,0



# supplier1 = Supplier.create

# Experience.create(supplier: supplier1)

puts "seed db created"

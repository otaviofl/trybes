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
  otavio: {name:"Otavio", email: "ot@ot.com", password: "123456", picture_avatar: "urla", picture_banner: "urlb", password_confirmation: "123456" },
  claudio: { name:"Claudio", email:"cl@cl.com", password: "123456", picture_avatar: "urla", picture_banner: "urlb", password_confirmation: "123456" },
  renato: { name:"Renato", email:"re@re.com", password: "123456", picture_avatar: "urla", picture_banner: "urlb", password_confirmation: "123456" }
}


users.each do |user, value|
     User.create!(name: value[:name], email: value[:email], password: value[:password], password_confirmation: value[:password], picture_avatar: value[:picture_avatar], picture_banner: value[:picture_banner])
  end

suppliers = {
  yoga: {name:"Yoga Place", email: "yo@yo.com", picture_avatar: "urla", picture_banner: "urlb" },
  dive: {name:"Dive Place", email: "di@di.com", picture_avatar: "urla", picture_banner: "urlb" },
  skydive: {name:"Skydive Place", email: "sk@sk.com", picture_avatar: "urla", picture_banner: "urlb" }
}

suppliers.each do |supplier, value|
     Supplier.create!(name: value[:name], email: value[:email],  picture_avatar: value[:picture_avatar], picture_banner: value[:picture_banner])
  end

categories = {
  yoga: {name:"Yoga"},
  dive: {name:"Dive"},
  skydive: {name:"Skydive"}
}

categories.each do |category, value|
     Category.create!(name: value[:name])
  end


yoga_supplier = Supplier.first
yoga_category = Category.first

experiences = {
  yoga_class: {supplier: yoga_supplier, category: yoga_category, description: "Yoga Class", start: "12/12/2018", finish: "14/12/2018", address: "ladeira da gloria, 26, rio de janeiro" },
}

experiences.each do |experience, value|
     Experience.create!(description: value[:description], address: value[:address], start: value[:start],
      finish: value[:finish], supplier: value[:supplier], category: value[:category])
  end

    # t.bigint "category_id"
    # t.bigint "supplier_id"
    # t.integer "status"
    # t.string "description"
    # t.datetime "start"
    # t.datetime "end"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.integer "price_cents", default: 0, null: false
    # t.float "latitude"
    # t.float "longitude"
    # t.string "address"
    # t.index ["category_id"], name: "index_experiences_on_category_id"
    # t.index ["supplier_id"], name: "index_experiences_on_supplier_id"








# supplier1 = Supplier.create

# Experience.create(supplier: supplier1)

puts "seed db created"

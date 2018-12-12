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
  yoga1: {name:"Bikram Yoga Rio", email: "contato@bikramyogario.com", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462598/Suppliers/Yoga/yoga_avatar_bikran.jpg", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544639579/Suppliers/Pilates/yoga_banner_bikran2.jpg",
          rating: "4,9", location: "Rio", phone: "021-3186-1625", facebook: "https://www.facebook.com/BikramYogaRio/ ",
          web_address: "www.bikramyogario.com" },

  yoga2: {name:"Yoga Barra da Tijuca", email: "contato@riservazen.com", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462598/Suppliers/Yoga/yoga_avatar_yoga_barra.jpg", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544643302/Suppliers/Pilates/yoga_banner_yoga_barra4.png",
          rating: "5,0", location: "Rio", phone: "021-99307-1327", facebook: "https://www.facebook.com/yogabarradatijuca/",
          web_address: "www.riservazen.com" },

  yoga3: {name:"The Museum of Yoga", email: "themuseumofyoga@gmail.com", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462598/Suppliers/Yoga/yoga_avatar_the_museum_of_yoga.png", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544630240/Suppliers/Yoga/the_museum_of_yoga2.png",
          rating: "4,9", location: "Rio", phone: "021-98291-0211", facebook: "https://www.facebook.com/themuseumofyogaipanema/",
          web_address: "www.themuseumofyoga.com" },

  yoga4: {name:"Centro Iyengar Yoga", email: "contato@centroiyengaryogario.com.br", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462598/Suppliers/Yoga/yoga_avatar_centro_iyengar.jpg", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544645760/Suppliers/Pilates/yoga_banner_centro_iyengar.png",
          rating: "4", location: "Rio", phone: "021-2246-4028", facebook: "https://www.facebook.com/CIYRJ/",
          web_address: "www.centroiyengaryogario.com.br" },

  yoga5: {name:"Prama", email: "luanafreitas@gmail.com", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462598/Suppliers/Yoga/yoga_avatar_prama.jpg", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544639580/Suppliers/Pilates/yoga_banner_prama2.jpg",
          rating: "4", location: "Rio", phone: "021-99454-8803", facebook: "https://www.facebook.com/pramariodejaneiro/",
          web_address: "" },

  diving1: {name:"Coral de Fogo Diving Experience SSI", email: "contato@coraldefogo.com", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462619/Suppliers/Diving/mergulho_avatar_coral_de_fogo.png", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462621/Suppliers/Diving/mergulho_banner_coral_de_fogo.png",
            rating: "4,7", location: "Rio", phone: "021-3075-2549", facebook: "https://www.facebook.com/coraldefogo/",
            web_address: "www.coraldefogo.com" },

  diving2: {name:"Océan Centro de Mergulho", email: "info@ocean.com.br", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462619/Suppliers/Diving/mergulho_avatar_ocean.png", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462622/Suppliers/Diving/mergulho_banner_ocean.jpg",
            rating: "4,7", location: "Rio", phone: "024-3366-6419", facebook: "https://www.facebook.com/coraldefogo/",
            web_address: "www.ocean.com.br" },

  diving3: {name:"Mar do Rio", email: "contato@mardorio.com.br", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462619/Suppliers/Diving/mergulho_avatar_mar_do_rio.png", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462621/Suppliers/Diving/mergulho_banner_mar_do_rio.png",
            rating: "5", location: "Rio", phone: "021-2225-7508", facebook: "https://www.facebook.com/mardoriomergulho/",
            web_address: "www.mardorio.com.br" },

  diving4: {name:"Mainicke Divers", email: "escolademergulho@meinickedivers.com.br", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462619/Suppliers/Diving/mergulho_avatar_meinicke.png", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462622/Suppliers/Diving/mergulho_banner_meinicke.png",
            rating: "4,6", location: "Rio", phone: "021-99634-8225", facebook: "https://www.facebook.com/MeinickeDiversEscoladeMergulho/",
            web_address: "www.meinickedivers.com.br" },

  diving5: {name:"Acqua World - Escola e Operadora de Mergulho", email: "acquaworld@acquaworld.com.br", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462618/Suppliers/Diving/mergulho_avatar_acquaworld.jpg", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462620/Suppliers/Diving/mergulho_banner_acquaworld.jpg",
            rating: "4,8", location: "Rio", phone: "022-2622-2217", facebook: "https://www.facebook.com/acquaworld.escolademergulho/",
            web_address: " www.acquaworld.com.br" },

  pilates1: {name:"Studio Mariana Lobato", email: "contato@studiomarianalobato.com.br", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462730/Suppliers/Pilates/pilates_avatar_studio_mariana_lobato.png", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544627964/Suppliers/Pilates/picture_banner_mariana_lobato2.jpg",
            rating: "5", location: "Rio", phone: "021-2249-2843", facebook: "https://www.facebook.com/studiomarianalobatorj/",
            web_address: "www.studiomarianalobato.com.br" },

  pilates2: {name:"Gaeta Studio Pilates", email: "contato@gaetapilates.com.br", remote_picture_avatar_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462730/Suppliers/Pilates/pilates_avatar_gaeta_studio_de_pilates.png", remote_picture_banner_url: "https://res.cloudinary.com/otaviofl/image/upload/v1544462733/Suppliers/Pilates/pilates_banner_gaeta_studio_de_pilates.png",
            rating: "3", location: "Rio", phone: "021-2242-5663", facebook: "https://www.facebook.com/GaetaStudioPilates/",
            web_address: "http://gaetapilates.com.br/" }
}

suppliers.each do |supplier, value|
     Supplier.create!(name: value[:name], email: value[:email],  remote_picture_avatar_url: value[:remote_picture_avatar_url],
                      remote_picture_banner_url: value[:remote_picture_banner_url], rating: value[:rating], location: value[:location],
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

vacancy = 0

yoga_supplier1 = Supplier.first
yoga_supplier2 = Supplier.second
yoga_supplier3 = Supplier.third
yoga_supplier4 = Supplier.fourth
yoga_supplier5 = Supplier.fifth
yoga_category = Category.first

diving_supplier1 = Supplier.find(6)
diving_supplier2 = Supplier.find(7)
diving_supplier3 = Supplier.find(8)
diving_supplier4 = Supplier.find(9)
diving_supplier5 = Supplier.find(10)
diving_category = Category.second

pilates_supplier1 = Supplier.find(11)
pilates_supplier2 = Supplier.find(12)
pilates_category = Category.third

experiences = {
  yoga_class_1: {location: "Rio", supplier: yoga_supplier1, category: yoga_category, description: "A Bikram Yoga foi desenvolvida para melhorar a sua flexibilidade, força física, mental, e o equilíbrio. A sequência possui dois exercícios de respiração e 26 posturas de Hatha Yoga, praticados em uma sala aquecida. Nossos professores vão incentivar, motivar e inspirar você a fazer o seu melhor. Através da prática regular, você vai logo perceber que aquilo que se aprende na sala de yoga podem ser integrados em seu estilo de vida e no seu dia-a-dia.",
                start: "15/12/2018", finish: "16/01/2019", address: "Rua Barata Ribeiro, 655, Loja E, Copacabana, Rio de Janeiro",
                price: 429, title: "1 Mês de aula TOP!", short_title: "Heads UP! Na Bikram o iniciante paga apenas R$199,00 no primeiro mês de experiência.",
                vacancy: vacancy, short_description: "Bikram Yoga a legítima Hot Yoga é um treino intenso e divertido de 90 minutos de aula para todos os níveis de alunos."},

  yoga_class_2: {location: "Rio", supplier: yoga_supplier2, category: yoga_category, description: "Riserva Zen Yoga Class é um espaço de encontros, práticas de Aulas de Yoga, Meditação e Cursos.  Localizado na Barra da Tijuca, nosso programa propõe cultivar o equilíbrio diário através do mergulho profundo dentro do nosso próprio ser.",
                start: "18/12/2018", finish: "18/01/2019", address: "Av. Gastão Sengés 395, Barra da Tijuca, Rio de janeiro",
                price: 260, title: "Riserva Zen Yoga Life", short_title: "Heads UP! Venha descobrir os benefícios da Yoga com duas semanas de aulas promocionais por R$99,00.",
                vacancy: vacancy, short_description: "Pratique Yoga, fique bem, vem pro Riserva Zen. Temos como propósito amplificar a felicidade, o autoconhecimento e o bem estar pessoal diário, através da prática e da filosofia do Yoga."},

  yoga_class_3: {location: "Rio", supplier: yoga_supplier3, category: yoga_category, description: "The Museum of Yoga nasceu de uma experiência linda de 10 anos chamada BLYSS Yoga onde milhares de alunos nos deram o presente da sua energia nos tornando o mais querido Centro de Yoga do Rio! Continuamos com as aulas, Curso de Formação em Yoga , eventos mais agora tambem expandiremos a nossa missão para outras áreas.",
                  start: "17/12/2018", finish: "17/01/2019", address: "Rua Joana Angelica 116, Ipanema, Rio de Janeiro",
                  price: 50, title: "Black Friday - 1 mês", short_title: "Heads UP! Black Friday Yoga! 1 mês de Yoga por R$50.",
                  vacancy: vacancy, short_description: "Vamos levar a sabedoria milenar da prática de Yoga parao mundo de hoje usando tudo o que estiver ao nosso alcance."},

  yoga_class_4: {location: "Rio", supplier: yoga_supplier4, category: yoga_category, description: "O método Iyengar é sistemático e se desenvolve gradualmente, permitindo ao aluno progredir com confiança, sem se machucar. A partir das primeiras semanas o aluno já poderá perceber o aumento da sua capacidade física, da auto-percepção e da concentração. Com mais tempo o aluno atingirá um estado meditativo durante a prática. Segundo o Mestre: Yoga é meditação em ação.",
                  start: "20/12/2018", finish: "20/01/2019", address: "Rua Maria Eugênia, 217 Humaitá, Rio de Janeiro",
                  price: 430, title: "Yoga Iyengar - 1 mês", short_title: "Heads UP! O CIYRJ também dispõe de vestiários masculino e feminino equipados com armários e chuveiros.",
                  vacancy: vacancy, short_description: "As aulas oferecidas no CIYRJ servem para aprender e aperfeiçoar as técnicas do método Iyengar. A variedade de níveis oferecidos obedece a uma graduação pedagógica que respeita a progressão do método Iyengar. A duração das aulas é de 1h30 ou 2h dependendo do nível."},

  yoga_class_5: {location: "Rio", supplier: yoga_supplier5, category: yoga_category, description: "O conhecimento yoguico tem uma sabedoria ancestral! Os benefícios psico físicos são de entrega, paciência, alívio, esperança, força, características de uma tartaruga em sua liberdade. Namastê.",
                  start: "16/12/2018", finish: "17/01/2019", address: "Rua Senador Dantas, 117 Centro, Rio de Janeiro",
                  price: 320, title: "Kit com 20 aulas.", short_title: "Heads UP! Horários novos com Isabela Oliveira, segundas e quartas 18hs e 19hs.",
                  vacancy: vacancy, short_description: "Somos um espaço de Yoga voltado para a resolução das amarras que limitam nosso crescimento."},

  diving_class_1: {location: "Angra", supplier: diving_supplier1, category: diving_category, description: "A 150 km da costa do Rio, Angra é considerada uma das melhores locais do mundo para o mergulho. Quer passar 5 dias mergulhando no paraíso? Vem com a gente.",
                  start: "18/12/2018", finish: "23/12/2018", address: "Avenida Repórter Nestor Moreira, 1, Botafogo, Rio de Janeiro",
                  price: 2000, title: "Viagem Angra 2018", short_title: "Heads UP! A SSI é um nome de confiança no mundo do mergulho e atribuímos o nosso sucesso aos nossos padrões de ensino íntegros e metodologia focada.",
                  vacancy: vacancy, short_description: "Por mais de 45 anos, a SSI forneceu formação, certificação de mergulho e recursos educativos a mergulhadores, instrutores de mergulho, centros de mergulho e resorts em todo o mundo."},

  diving_class_2: {location: "Angra", supplier: diving_supplier2, category: diving_category, description: "Este é um programa de experiência, onde você estará acompanhado por um profissional durante todo o mergulho. Durante a sua aventura você realizará algumas habilidades que poderão ser creditadas para o seu curso PADI Open Water Diver. Desta forma você estará a caminho de obter uma certificação reconhecida internacionalmente.",
                  start: "18/12/2018", finish: "20/12/2018", address: "Iate Clube Aquidabã, Angra dos Reis",
                  price: 800, title: "Discover Scuba Diving", short_title: "Heads Up! Idade mínima 10 anos. Inclui máscara, snorkel e nadadeira, colete equilibrador, roupa de neoprene, válvulas reguladoras e cilindro. ",
                  vacancy: vacancy, short_description: "Para aqueles que querem descobrir as maravilhas do mundo submarino de uma maneira simples, rápida e divertida."},

  diving_class_3: {location: "Rio", supplier: diving_supplier3, category: diving_category, description: "O programa PADI Rescue Diver (Mergulhador de Resgate) expandirá o seu conhecimento e experiência além do nível puramente recreativo, pois você deixará de se preocupar apenas com si próprio e aprenderá a considerar a segurança e o bem-estar de outros mergulhadores. Apesar da seriedade do curso, é uma maneira divertida de aumentar a sua confiança.",
                  start: "19/12/2018", finish: "21/12/2018", address: "Marina da Glória, Rio de Janeiro ",
                  price: 1650, title: "Mergulhador de Resgate", short_title: "Heads Up! Inclui aula teórica, mergulho em piscina e 2 mergulhos no mar e Certificação PADI de mergulhador Rescue Diver",
                  vacancy: vacancy, short_description: "O treinamento como mergulhador de resgate o preparará para evitar problemas e, se necessário, controlar emergências de mergulho."},

  diving_class_4: {location: "Rio", supplier: diving_supplier4, category: diving_category, description: "Este é um programa de Revisão e Atualização de Habilidades, bem amplo e variado, adaptando-se às necessidades de cada mergulhador. Para os mergulhadores que há muito tempo não praticam a atividade. Para dar maior segurança e confiança aos que ainda não se sentem à vontade embaixo d'água.",
                  start: "18/12/2018", finish: "20/12/2018", address: "Rua Antônio Basílio, 103 Tijuca, Rio de Janeiro",
                  price: 650, title: "Revisão Scuba", short_title: "Heads Up! Vendemos as melhores marcas de equipamentos do mercado, prestamos consultoria e agendamos a sua viagem.",
                  vacancy: vacancy, short_description: "Venha romper o limite ar-água e conhecer um novo mundo, selvagem, inexplorado e surpreendente!"},

  diving_class_5: {location: "Arraial do Cabo", supplier: diving_supplier5, category: diving_category, description: "O Curso de Mergulho Open Water Diver é um convite ao primeiro contato livre com o mundo subaquático. O Curso é voltado para toda pessoa que tenha interesse em conhecer o fundo do mar, aumentando seu contato com a natureza e beleza de mais da metade do planeta. O curso é ministrado por instrutor experiente e atualizado nos recentes parâmetros e protocolos de segurança internacionais de mergulho. Garantindo ao aluno e futuro mergulhador, aprendizado das técnicas mais recentes e eficientes do Mundo do Mergulho Recreacional.",
                  start: "19/12/2018", finish: "23/12/2018", address: "Praça da Bandeira, 23, Arraial do Cabo",
                  price: 1200, title: "Open Water Diver", short_title: "Heads Up! O curso Open Water é para mergulhadores já iniciados. Traga seu equipamento ou alugue conosco.",
                  vacancy: vacancy, short_description: "A ACQUA WORLD Escola e Operadora de Mergulho, atua há mais de 12 anos em Arraial do Cabo e Cabo Frio, Rio de Janeiro – Brasil. Especializada em CURSOS e TURISMO, a operadora conta com profissionais treinados e habilitados pelas principais certificadoras internacionais, estando filiada à PADI, SSI, SDI e CMAS desde sua fundação."},


  pilates_class_1: {location: "Rio", supplier: pilates_supplier1, category: pilates_category, description: "Método desenvolvido pelo professor, bailarino e coreógrafo Ron Fletcher (EUA), discípulo de Joseph Pilates e bailarino da Cia Martha Graham nas décadas de 1950 e 1960. Fletcher acompanhou os estudos do mestre J. Pilates até a morte e depois continuou as pesquisas ao lado de Clara Pilates. Ao longo de mais de 50 anos de trabalho, Fletcher desenvolveu um método próprio que amplia os estudos da “Contrologia” a partir do entrelaçamento com princípios da Dança, proporcionando assim uma abordagem mais dinâmica e ritmada através de técnicas exclusivas como: Respiração Percussiva Fletcher, Fundamentos Fletcher, Towelwork Fletcher, Floorwork Fletcher e Barrework Fletcher.",
                    start: "17/12/2018", finish: "18/01/2019", address: "Rua Jardim Botânico, 674, Rio de Janeiro",
                    price: 340, title: "Fletcher Pilates Mensal", short_title: "Heads Up! Venha conhecer o Fletcher Pilates. Todos os nossos professores são licenciados.",
                    vacancy: vacancy, short_description: "O Studio Mariana Lobato  é  centro educacional do Fletcher Pilates® no Rio de Janeiro. O Fletcher Pilates® é uma das melhores escolas de Pilates do mundo."},

  pilates_class_2: {location: "Rio", supplier: pilates_supplier2, category: pilates_category, description: "O Pilates é conhecido por ser um método completo, pois trabalha tanto com os aspectos físicos quanto os mentais. A drenagem linfática Renata França consiste em técnicas com movimentos rigorosos e específicos se comparados à drenagem convencional. O Power Plate são plataformas que trabalham por meio das vibrações pelo corpo inteiro e com rápidas contrações musculares.",
                    start: "17/12/2018", finish: "18/12/2018", address: "Rua Sete de Setembro, 92 Centro, Rio de Janeiro",
                    price: 400, title: "Método Renata França", short_title: "Heads Up! Localizado no Centro do Rio, podemos recebê-lo com mais comodidade próximo ao seu trabalho.",
                    vacancy: vacancy, short_description: "Originariamente chamado “GAETA STUDIO PILATES”, o GAETA STUDIO surgiu em 03/09/2007 a partir do sonho de sua idealizadora e proprietária, a Fisioterapeuta RAQUEL GAETA, tendo como foco principal de atuação o Pilates."}
}

experiences.each do |experience, value|
     Experience.create!(description: value[:description], address: value[:address], start: value[:start],
      finish: value[:finish], supplier: value[:supplier], category: value[:category], price: value[:price],
      title: value[:title], short_title: value[:short_title], vacancy: (5..25).to_a.sample,
      short_description: value[:short_description], location: value[:location])
  end




# supplier1 = Supplier.create

# Experience.create(supplier: supplier1)

puts "seed db created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Power.destroy_all

Power.create!([{
    description: 'Legislativo'
  },
  {
    description: 'Executivo'
  }
])

puts "Created #{Power.count} movies"

Scale.destroy_all
Scale.create!([{
    description: 'Nacional'
  },
  {
    description: 'Internacional'
  }
])

puts "Created #{Scale.count} scales"

Font.destroy_all

Font.create!([{
    description: 'Desconhecida'
  },
  {
    description: 'Folha de São Paulo'
  },
  {
    description: 'O Globo'
  },
  {
    description: 'Veja'
  },
  {
    description: 'Carta Capital'
  }
])

puts "Created #{Font.count} fonts"

Party.destroy_all
Party.create!([{
    description: 'Movimento Democrático Brasileiro'
  },
  {
    description: 'Partido Trabalhista Brasileiro'
  },
  {
    description: 'Partido dos Trabalhadoes'
  },
  {
    description: 'Partido da Social Democracia Brasileira'
  },
  {
    description: 'Partido Social Liberal'
  },
  {
    description: 'Partido Novo'
  }
])

puts "Created #{Party.count} parties"

Communication.destroy_all

Communication.create!([{
    description: 'Whatsapp'
  },
  {
    description: 'Facebook'
  },
  {
    description: 'Jornal'
  },
  {
    description: 'Televisão'
  },
  {
    description: 'Revista'
  },
  {
    description: 'Instagram'
  }
])

puts "Created #{Communication.count} communications"

Population.destroy_all

Population.create!([{
description: 'Classe Baixa'
},
{
description: 'Classe Média Baixa'
},
{
description: 'Classe Média'
},
{
description: 'Classe Média Alta'
},
{
description: 'Classe Alta'
}
])

puts "Created #{Population.count} Populations"

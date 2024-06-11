require 'faker'

namespace :dev do
  desc "Configura o ambiente de desenvolvedor"
  task setup: :environment do
    puts "Cadastro os contatos..."
    100.times do 
      Contact.create!(
         name: Faker::Name.name,
         email: Faker::Internet.email,
         birthdate: Faker::Date.between(from: 65.days.ago, to: 18.years.ago),
      )
    end
    puts "Contatos cadastrados com sucesso!"
  end

end

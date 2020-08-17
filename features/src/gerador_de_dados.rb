class GeradorCadastro require 'faker'
    attr_accessor :nome, :email, :senha

    def gerar
        @nome = Faker::Name.name
        @email = Faker::Internet.email
        @senha = Faker::Internet.password
    end

end
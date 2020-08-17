Dado('tenho um usuário já cadastrado na base') do
    visit '/cadastro'
    @dados.gerar
    @cadastrar_page.cadastrar @dados.nome, @dados.email, @dados.senha
end

Dado('que tenho o {string} e {string}') do |email, senha|
    visit '/login'
        @email = email
        @senha = senha
end
  
  Quando('realizo o login') do
    
    @login_page.entrar @dados.email, @dados.senha
end

Quando('tento realizar o login') do
    @login_page.entrar @email, @senha
end
  
  
Então('tenho acesso para as funcionalidades') do
    expect(@home_page.home).to be_present #### <== Como faazer???
    expect(@home_page.movimentacao).to be_present #### <== Como faazer???
    expect(@home_page.resumo).to be_present #### <== Como faazer???
    expect(@home_page.sair).to be_present #### <== Como faazer???
 #  expect(@home_page.adicionar).to be_present #### <== Como faazer???
 #  expect(@home_page.listar).to be_present #### <== Como faazer??? 

    
end
  
Então('vejo a mensagem {string}') do |mensagem|
    if mensagem.include? "Bem vindo"
        expect(@home_page.alerta).to have_content("Bem vindo, #{@dados.nome}!")
    elsif mensagem.include? "2_mensagens"
        log("Variaveis vazias") ###
        # binding.pry
        expect(@login_page.lista_alerta.size).to eql(2)
        expect(@login_page.lista_alerta[0].text).to have_content("Email é um campo obrigatório")
        expect(@login_page.lista_alerta[1].text).to have_content("Senha é um campo obrigatório")

    else 
        expect(@login_page.alerta).to have_content(mensagem)
    end
end
  
 
  


Dado('que estou na pagina de cadastro de usuário') do
  visit '/cadastro'
end

Dado('que tenho os dados corretos') do 
  @dados.gerar
  #log "nome = #{@dados.nome}, email = #{@dados.email}, senha = #{@dados.senha}"
end

Dado('tenho os dados {string}, {string} e {string}') do |nome, email, senha|
    @dados.nome = nome
    @dados.email = email
    @dados.senha = senha
end
  

Quando('preencho o formulário') do
  @cadastrar_page.cadastrar @dados.nome, @dados.email, @dados.senha
end

Então('devo ver a mensagem {string}') do |mensagem|
  expect(@cadastrar_page.alerta).to have_content(mensagem)
end

Então('devo conseguir logar') do
    visit '/login'
    @login_page.entrar @dados.email, @dados.senha
    expect(@home_page.alerta).to have_content("Bem vindo, #{@dados.nome}!")
end
  
Então('não devo conseguir logar') do
    visit '/login'
    @login_page.entrar @dados.email, @dados.senha
    expect(@login_page.alerta).to be_present #### <== Como faazer???
end
  
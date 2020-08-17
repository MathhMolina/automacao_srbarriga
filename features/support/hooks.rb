Before do 

    @dados = GeradorCadastro.new
    @cadastrar_page = CadastroUsuarioPage.new
    @login_page = LoginPage.new
    @home_page = HomePage.new

    page.current_window.resize_to(1440,900)
end

After ('@logout') do
    @home_page.logout
end

# After do |scenario| ===>>> Gerar print ao final de cada scenario
#     nome_cenario = scenario.name.gsub('[^a-Z0-9 ]', '')
#     nome_cenario = nome_cenario.tr(' ', '_').downcase!
#     screenshot = "log/screenshot/#{nome_cenario}_#{scenario.id}.png"
    
#     page.save_screenshot(screenshot)
#     embed(screenshot,'image/png', 'Evidência')
#     attach(screenshot,'image/png')
# end
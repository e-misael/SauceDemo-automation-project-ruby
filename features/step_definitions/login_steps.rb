Dado('que acesso a tela de login') do
  
  @login_page.acessar

end

Quando('submeto minhas credenciais com {string} e {string}') do |usuario, senha|
  
  @login_page.informar_usuario (usuario)
  @login_page.informar_senha (senha)
  @login_page.logar

end

Então('sou redirecionado para a tela principal') do

  expect(@inventario_page.is_inventario?).to be true

end

Quando('submeto minhas credenciais com os valores') do |dados|
  
  # Recebe cada usuário disponível na tabela da feature
  tentativaUsuario = dados.hashes.first
  
  @login_page.autenticar (tentativaUsuario)

end

Então('vejo a mensagem de alerta: {string}') do |mensagem|
   
  expect(@alerta.verificar_erro_login).to have_text(mensagem)

end
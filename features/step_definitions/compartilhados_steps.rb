Dado('que estou na tela de inventário com o usuário {string} e {string}') do |usuario, senha|
    @login_page.acessar
    @login_page.informar_usuario(usuario)
    @login_page.informar_senha(senha)
    @login_page.logar
  end

  Então('tenho o carrinho atualizado') do
    expect(@carrinho.verificar_tamanho_carrinho).to eql(1)
  end
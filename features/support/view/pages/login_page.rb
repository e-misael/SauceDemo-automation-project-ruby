class LoginPage
    include Capybara::DSL

    def acessar
        visit "/"
    end

    def autenticar (pessoa)
        informar_usuario(pessoa[:usuario])
        informar_senha(pessoa[:senha])
        logar        
    end

    def informar_usuario (usuario)
        find('#user-name').set usuario
    end

    def informar_senha (senha)
        find('#password').set senha
    end

    def logar
        click_button "LOGIN"
    end
end
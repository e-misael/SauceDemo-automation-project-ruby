class Alerta
    include Capybara::DSL
    
    def verificar_erro_login
        find("[data-test='error']") 
    end
end
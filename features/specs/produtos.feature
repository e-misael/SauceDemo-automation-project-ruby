#language: pt
Funcionalidade: Manter produtos
    Sendo um usuário autenticado
    Quero ter acesso aos produtos disponíveis
    Para que possa manipulá-los

    Cenario: Detalhar produto

        Dado que estou na tela de inventário com o usuário "standard_user" e "secret_sauce"
        Quando acesso um dos produtos disponíveis
        Então tenho acesso ao detalhamento correspondente

    Cenario: Adicionar produto ao carrinho

        Dado que estou na tela de inventário com o usuário "standard_user" e "secret_sauce"
        Quando acesso um dos produtos disponíveis
            E adiciono ao carrinho
        Então tenho o carrinho atualizado
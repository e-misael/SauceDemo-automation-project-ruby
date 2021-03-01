#language: pt
Funcionalidade: Inventário de produtos
    Sendo um usuário autenticado
    Quero manipular os produtos disponíveis
    Para que possa utilizá-los

    Esquema do Cenario: Ordenar produtos

        Dado que estou na tela de inventário com o usuário "standard_user" e "secret_sauce"
        Quando defino a ordenação dos produtos de forma "<exemplo>"
        Então os produtos devem ser ordenados de forma "<ordenacao>"

        Exemplos:
            | ordenacao  | exemplo             |
            | preco_asc  | Price (low to high) |
            | preco_desc | Price (high to low) |
            | nome_desc  | Name (Z to A)       |
            | nome_asc   | Name (A to Z)       |
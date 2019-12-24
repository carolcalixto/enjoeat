#language: pt

Funcionalidade: Cardápio
    Para que eu possa decidir o que pretendo comer
    Sendo um usuário que escolheu um restaurante
    Posso acessar o cardápio

    Contexto: Restaurantes
        Dado que eu acesso a lista de restaurantes

    @cardapio @temp
    Cenário: Produto disponível
        
        Quando eu escolho um restaurante "Burger House"
        Então vejo os seguintes itens disponíveis no cardápio:
            | produto        | descricao                       | preço    |
            | CLASSIC BURGER | O clássico. Não tem como errar. | R$ 18,50 |
            | BATATAS FRITAS | Batatas fritas crocantes        | R$ 5,50  |
            | REFRIGERANTE   | O refri mais gelado da cidade.  | R$ 4,50  |

    Cenário: Carrinho vazio

        Quando eu escolho um restaurante "Burger House"
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"
 
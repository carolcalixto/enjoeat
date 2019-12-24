#language: pt

@green_food
Funcionalidade: Finalizar Pedido
    Para que eu possa receber o pedido no meu endereço
    Sendo um usuário que fechou o carrinho com itens
    Posso finalizar o meu pedido

#BDT - teste guiado por comportamento - não é o ideal pois não está voltado ao negócio, está apenas voltado 
#para teste (teria que automatizar STEP por STEP e pode se ter muitos)
    # Cenario: Finalizar pedido com Cartão Refeição

    #     Dado que eu fechei o meu carrinho
    #     E preencho o campo nome com "Fernando"
    #     E preencho o campo email com "eu@papito.io"
    #     E preencho o campo confirmação de email com "eu@papito.io"
    #     E preencho a rua com "Avenida Paulista"
    #     E preencho o número da rua com "1000"
    #     E preencho o campo complemento com "17º andar"
    #     E clico na forma de pagamento "Cartão Refeição"
    #     Quando eu clico em "Finalizar Pedido"
    #     Então devo ver uma mensagem de sucesso


#BDD - é o ideal pois está voltado ao negócio, todos entendem e traz mais valor ao negócio
    @smoke
    Cenario: Finalizar pedido com Cartão Refeição

        Dado que eu fechei o pedido com os itens:
            | quantidade | nome                | descricao                                | subtotal |
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.        | R$ 21,00 |
        E informei os meus dados de entrega
            | nome                 | Fernando         |
            | email                | eu@papito.io     |
            | confirmação de email | eu@papito.io     |
            | rua                  | Avenida Paulista |
            | numero               | 1000             |
            | complemento          | 17º andar        |
        Quando eu finalizo o meu pedido com o "Cartão Refeição"
        Então devo ver a seguinte mensagem 
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """
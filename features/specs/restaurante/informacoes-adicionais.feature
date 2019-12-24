#language: pt

Funcionalidade: Informações adicionais
    Para que eu possa ver as informações adicionais
    Sendo um usuário que escolheu um restaurante
    Posso ver a categoria, descrição detalhada e horários de funcionamento

    @infos
    Cenário: Detalhes do restaurante

        Dado que eu acesso a lista de restaurantes
        Quando eu escolho um restaurante "Burger House"
        Então eu vejo as seguintes informações adicionais:
            | categoria | Hamburgers                               |
            | descriçao | 40 anos se especializando em trash food. |
            | horarios  | Funciona todos os dias, de 10h às 22h    |

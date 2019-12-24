Dado("que eu acesso a lista de restaurantes") do
    visit '/restaurants'
end

Quando("eu escolho um restaurante {string}") do |restaurant|
    @rest_list_page.go(restaurant)
end

Então("vejo os seguintes itens disponíveis no cardápio:") do |table|
    items = @rest_page.menu

    product_data = table.hashes

    product_data.each_with_index do |value, index|
      expect(items[index]).to have_text value["produto"].upcase
      expect(items[index]).to have_text value["descricao"]
      expect(items[index]).to have_text value["preco"]
    end
end

Então("eu vejo as seguintes informações adicionais:") do |table|
    infos = table.rows_hash
    detail = @rest_page.details
    expect(detail).to have_text infos['categoria']
    expect(detail).to have_text infos['descricao']
    expect(detail).to have_text infos['horarios']
end
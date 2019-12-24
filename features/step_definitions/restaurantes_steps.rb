Dado("que temos os seguintes restaurantes") do |table|
    @restaurant_data = table.hashes
end
  
Quando("acesso a lista de restaurantes") do
    @rest_list_page.load
end

Então("devo ver todos os restaurantes desta lista") do
    restaurants = @rest_list_page.list

    @restaurant_data.each_with_index do |value, index|
        expect(restaurants[index]).to have_text value['nome'].upcase
        expect(restaurants[index]).to have_text value['categoria']
        expect(restaurants[index]).to have_text value['entrega']
        expect(restaurants[index]).to have_text value['avaliacao']
    end
end

# Texto comentado abaixo pois o Esquema do Cenario: Restaurantes disponíveis já contempla as validações comentadas
# Dado("que tenho uma lista de restaurantes") do
#     @restaurant_data = [
#         { name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: 4.9 },
#         { name: 'Burger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5 },
#         { name: 'Coffee Corner', category: 'Cafeteria', delivery_time: '20 minutos', rating: 4.8 }
#     ]
# end

# Texto comentado abaixo pois o Esquema do Cenario: Restaurantes disponíveis já contempla as validações comentadas
# Então("vejo todas as opções disponíveis") do
#     restaurantes = all('.restaurant-item') #o método all devolve uma coleção de elementos    
#     expect(restaurantes.size).to be > 0 #o método size devolve a quantidade de itens
# end

# Então("cada restaurante deve exibir sua Categorias") do
#     restaurants = all('.restaurant-item')

#     @restaurant_data.each_with_index do |value, index|
#         expect(restaurants[index]).to have_text value[:category]
#     end
    
# end

# Então("cada restaurante deve exibir o tempo de entrega") do
#     restaurants = all('.restaurant-item')

#     @restaurant_data.each_with_index do |value, index|
#         expect(restaurants[index]).to have_text value[:delivery_time]
#     end
# end

# Então("cada restaurante deve exibir sua nota de avaliação") do
#     restaurants = all('.restaurant-item')

#     @restaurant_data.each_with_index do |value, index|
#         expect(restaurants[index]).to have_text value[:rating]
#     end
# end


#comentado pois este código estava validando o Esquema do Cenario: Restaurantes disponíveis 
#que foi substituído pelo Cenario: Restaurantes disponíveis
# Então('cada restaurante deve ter {int} {string} {string} {string} {float}') do |id, name, category, delivery_time, rating|
#     restaurants = all('.restaurant-item')
#     expect(restaurants[id]).to have_text name.upcase
#     expect(restaurants[id]).to have_text category
#     expect(restaurants[id]).to have_text delivery_time
#     expect(restaurants[id]).to have_text rating
# end
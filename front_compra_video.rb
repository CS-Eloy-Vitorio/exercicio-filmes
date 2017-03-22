require './compra_video'

#INTERAÇÃO COM O USUÁRIO
puts "|============================LISTA DE FILMES============================|
|ID  |Nome                                  |Gênero        |R$          |
|-----------------------------------------------------------------------|
|1   |Senhor dos Anéis                      |Fantasia      |45.00       |
|2   |As Branquelas                         |Comédia       |55.00       |
|3   |Velozes e Furiosos 7                  |Ação          |100.00      |
|4   |Velozes e Furiosos 6                  |Ação          |55.00       |
|5   |The Scapegoat                         |Drama         |100.00      |
|6   |Meu Malvado Favorito                  |Animação      |200.00      |
|=======================================================================|"

listaPrecos = {"1": 45.00, "2": 55.00, "3": 100.00,
  "4": 55.00, "5": 100.00, "6": 200.00}
ids = []
total = 0
controle = nil

loop do
  puts "Informe o(s) id(s) do(s) filme(s) ou F para enviar o pedido: "
  id = gets.chomp
  if id.upcase.eql?("F")
    controle = id.upcase
  else
    id_aux = id.to_i
    if id_aux >= 1 && id_aux <= 6
      ids.push(id_aux)
    elsif id_aux < 1 || id_aux > 6
      puts "O ID informado: #{id} não existe!. Favor informar o ID válido!"
    end
  end
break if controle.eql?("F") end

ids.each { |i| total += listaPrecos.fetch(i.to_s.to_sym)}

puts "Total: R$#{total}"

#INSTANCIA E CHAMADA DA CLASSE PARA TESTE
desconto = Desconto.new(total, ids)
df = desconto.descontoFinal
puts "Desconto Final é: #{df}%."

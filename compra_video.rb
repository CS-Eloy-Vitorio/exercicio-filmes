class Desconto

  @@total = 0
  @@total_desconto = 0
  @@ids = []
  @@flag_acao = false

  def initialize(total_p, ids_p)
      @@total = total_p
      @@ids = ids_p
  end

  def verificaGeneroAcao
    @@ids.each { |i|
     if i == 3 || i == 4
        @@flag_acao = true
     end
   }
   return @@flag_acao
  end

 def calculaDescontoFaixa
    return 0.00 * 100 if @@total <= 100.00
    return 0.10 * 100 if @@total > 100.00 && @@total <= 200.00
    return 0.20 * 100 if @@total > 200.00 && @@total <= 300.00
    return 0.25 * 100 if @@total > 300.00 && @@total <= 400.00
    return 0.30 * 100 if @@total > 400.00
  end

  def descontoFinal
    descontoFinal = calculaDescontoFaixa
    #puts "Desconto: #{descontoFinal}%"
    verificaGeneroAcao == true ? descontoFinal += 5 : descontoFinal += 0
    #puts "Desconto final: #{descontoFinal}%"
    @@flag_acao = false
    return descontoFinal
  end
end

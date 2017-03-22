require './compra_video'

describe Desconto do
  context "Valor total da compra <= R$100.00." do

    it "Valor da compra R$99.00 sem filme de ação deverá retornar 0% de " +
    "desconto." do
     desconto = Desconto.new(99.00, [1, 2, 6])
     descontoFinal = desconto.descontoFinal
     expect(descontoFinal).to eq 0.0
    end

    it "Valor da compra R$99.00 com filme de ação deverá retornar 5% de " +
    "desconto." do
     desconto = Desconto.new(99.00, [1, 2, 4, 6])
     descontoFinal = desconto.descontoFinal
     expect(descontoFinal).to eq 5.0
   end

   it "Valor da compra R$100.00 sem filme de ação deverá retornar 0% de " +
   "desconto." do
    desconto = Desconto.new(100.00, [1, 2, 5])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 0.0
  end

  it "Valor da compra R$100.00 com filme de ação deverá retornar 5% de " +
  "desconto." do
   desconto = Desconto.new(100.00, [1, 3, 4, 6])
   descontoFinal = desconto.descontoFinal
   expect(descontoFinal).to eq 5.0
  end
 end

 context "Valor total da compra > R$100.00 e <= R$200,00." do

   it "Valor da compra R$101.00 sem filme de ação deverá retornar 10% de " +
   "desconto." do
    desconto = Desconto.new(101.00, [1, 2, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 10.0
   end

   it "Valor da compra R$101.00 com filme de ação deverá retornar 15% de " +
   "desconto." do
    desconto = Desconto.new(101.00, [1, 2, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 15.0
   end

   it "Valor da compra R$199.00 sem filme de ação deverá retornar 10% de " +
   "desconto." do
    desconto = Desconto.new(199.00, [1, 2, 5])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 10.0
   end

   it "Valor da compra R$199.00 com filme de ação deverá retornar 15% de " +
   "desconto." do
    desconto = Desconto.new(199.00, [1, 3, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 15.0
   end

   it "Valor da compra R$200.00 sem filme de ação deverá retornar 10% de " +
   "desconto." do
    desconto = Desconto.new(200.00, [1, 2, 5])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 10.0
   end

   it "Valor da compra R$200.00 com filme de ação deverá retornar 15% de " +
   "desconto." do
    desconto = Desconto.new(200.00, [1, 3, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 15.0
   end
 end

 context "Valor total da compra > R$200.00 e <= R$300,00." do

   it "Valor da compra R$201.00 sem filme de ação deverá retornar 20% de " +
   "desconto." do
    desconto = Desconto.new(201.00, [1, 2, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 20.0
   end

   it "Valor da compra R$201.00 com filme de ação deverá retornar 25% de " +
   "desconto." do
    desconto = Desconto.new(201.00, [1, 2, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 25.0
   end

   it "Valor da compra R$299.00 sem filme de ação deverá retornar 20% de " +
   "desconto." do
    desconto = Desconto.new(299.00, [1, 2, 5])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 20.0
   end

   it "Valor da compra R$299.00 com filme de ação deverá retornar 25% de " +
   "desconto." do
    desconto = Desconto.new(299.00, [1, 3, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 25.0
   end

   it "Valor da compra R$300.00 sem filme de ação deverá retornar 20% de " +
   "desconto." do
    desconto = Desconto.new(300.00, [1, 2, 5])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 20.0
   end

   it "Valor da compra R$300.00 com filme de ação deverá retornar 25% de " +
   "desconto." do
    desconto = Desconto.new(300.00, [1, 3, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 25.0
   end
 end

 context "Valor total da compra > R$300.00 e <= R$400,00." do

   it "Valor da compra R$301.00 sem filme de ação deverá retornar 25% de " +
   "desconto." do
    desconto = Desconto.new(301.00, [1, 2, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 25.0
   end

   it "Valor da compra R$301.00 com filme de ação deverá retornar 30% de " +
   "desconto." do
    desconto = Desconto.new(301.00, [1, 2, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 30.0
   end

   it "Valor da compra R$399.00 sem filme de ação deverá retornar 25% de " +
   "desconto." do
    desconto = Desconto.new(399.00, [1, 2, 5])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 25.0
   end

   it "Valor da compra R$399.00 com filme de ação deverá retornar 30% de " +
   "desconto." do
    desconto = Desconto.new(399.00, [1, 3, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 30.0
   end

   it "Valor da compra R$400.00 sem filme de ação deverá retornar 25% de " +
   "desconto." do
    desconto = Desconto.new(400.00, [1, 2, 5])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 25.0
   end

   it "Valor da compra R$400.00 com filme de ação deverá retornar 30% de " +
   "desconto." do
    desconto = Desconto.new(400.00, [1, 3, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 30.0
   end
 end

 context "Valor total da compra > R$400,00." do

   it "Valor da compra R$401.00 sem filme de ação deverá retornar 30% de " +
   "desconto." do
    desconto = Desconto.new(401.00, [1, 2, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 30.0
   end

   it "Valor da compra R$401.00 com filme de ação deverá retornar 35% de " +
   "desconto." do
    desconto = Desconto.new(401.00, [1, 3, 4, 6])
    descontoFinal = desconto.descontoFinal
    expect(descontoFinal).to eq 35.0
   end
  end
end

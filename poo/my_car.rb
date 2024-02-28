# Crie uma classe chamada MyCar. Ao inicializar uma nova instância ou objeto da classe, permita que o usuário defina algumas variáveis ​​de instância que nos informam o ano, a cor e o modelo do carro. Crie uma variável de instância definida 0durante a instanciação do objeto para rastrear também a velocidade atual do carro. Crie métodos de instância que permitem que o carro acelere, freie e desligue o carro.
module 


class MyCar
  attr_accessor :velocity, :color
  attr_reader :year
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @velocity = 0
  end

  def self.consumo(milhas,galao)
    milhas x galao
  end

  def acelere(v)
    self.velocity += v
  end

  def freie(v)
    self.velocity -= v 
  end

  def desligue
    self.velocity = 0
  end
end

ferrari = MyCar.new 2023, "red", "Ferrari"
p ferrari.year
p ferrari.color
p ferrari.model
ferrari.acelere(60)
p ferrari.velocity
ferrari.freie(40)
p ferrari.velocity
ferrari.desligue
p ferrari.velocity

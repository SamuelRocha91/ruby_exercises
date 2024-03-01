# A classe Mastermind representa o jogo Mastermind.
class Mastermind
  # Acessores para os atributos senha, finish e tentativa.
  attr_accessor :senha, :finhish, :tentativa
  # Constante que contém as cores disponíveis para o jogo.
  CORES = ["azul", "amarelo", "verde", "vermelho", "laranja", "rosa", "cinza", "branco", "preto", "marrom"]

  # Método de inicialização da classe.
  def initialize
    # Inicializa o número da tentativa.
    @tentativa = 1
    # Inicializa a senha do jogo, com quatro cores aleatórias.
    @senha = []
    (1..4).each do
        @senha << CORES[Random.rand(10)]
    end
    # Inicializa o indicador de finalização do jogo.
    @finish = false
  end
  
  # Método responsável por iniciar e controlar o jogo.
  def play
    # Método que imprime a mensagem de boas-vindas ao jogo.
    self.welcome
    # Loop principal do jogo, que continua até o jogo ser finalizado.
    until @finish
     # Imprime o número da tentativa.
      puts "Tentativa #{@tentativa}"
     # Solicita ao jogador que digite sua tentativa.

      puts "Digite quatro cores sepradas por espaço:"
      palpite = gets.chomp().split(' ')
      # Inicializa um array para armazenar o feedback da tentativa.
      feedback = Array.new(4)
      # Avalia a tentativa do jogador em relação à senha.
      palpite.each_with_index do |cor, index|
        if (palpite[index] == @senha[index]) 
          feedback[index] = true
        elsif (@senha.include?(palpite[index]))
          feedback[index] = nil
        else
          feedback[index] = false
        end
      end
      # Verifica se o jogador acertou completamente a senha.

      if feedback.all? {|response| response == true} 
        @finish = true
        puts "Brocou!!!"
      # Verifica se o número máximo de tentativas foi alcançado.
      elsif @tentativa == 12
        puts "Que pena! Suas tentativas acabaram."
        puts "A senha era: #{@senha}"
      else
      # Incrementa o número da tentativa e exibe o feedback da tentativa.
        @tentativa += 1
        puts "Feedback: #{feedback}"
      end
    end
  end

    # Método que imprime a mensagem de boas-vindas ao jogo.
    def welcome
      puts "Olá, seja bem-vindo ao MASTERMIND Brasil!!!"
      sleep(3)
      puts "O jogo consiste em advinhar uma sequência de quatro cores"
      sleep(3)
      puts "As cores estão em português e podem ser reptidas"
      sleep(3)
      puts "Serão 12 tentativas!"
      sleep(2)
      puts "A cada tentativa você obterá um feedback da jogada:"
      sleep(3)
      puts "[true, 'partial', nil, nil]"
      sleep(2)
      puts "Será uma resposta para cada uma das 4 senhas"
      sleep(2)
      puts "true = acerto total"
      sleep(2)
      puts "'partial' = acerto parcial"
      sleep(2)
      puts "false = erro"
      sleep(2)
      system("clear")
    end

end

# Cria uma nova instância do jogo Mastermind e inicia o jogo.
new_match = Mastermind.new
new_match.play
class Mastermind
  attr_accessor :senha, :finhish, :tentativa
  CORES = ["azul", "amarelo", "verde", "vermelho", "laranja", "rosa", "cinza", "branco", "preto", "marrom"]

  def initialize
    @tentativa = 1
    @senha = []
    (1..4).each do
        @senha << CORES[Random.rand(10)]
    end
    @finish = false
  end
  
  def play
    self.welcome
    until @finish
      puts "Tentativa #{@tentativa}"
      puts "Digite quatro cores sepradas por espaço:"
      palpite = gets.chomp().split(' ')
      feedback = Array.new(4)
      palpite.each_with_index do |cor, index|
        if (palpite[index] == @senha[index]) 
          feedback[index] = true
        elsif (@senha.include?(palpite[index]))
          feedback[index] = nil
        else
          feedback[index] = false
        end
      end
      if feedback.all? {|response| response == true} 
        @finish = true
        puts "Brocou!!!"
      elsif @tentativa == 12
        puts "Que pena! Suas tentativas acabaram."
        puts "A senha era: #{@senha}"
      else
        @tentativa += 1
        puts "Feedback: #{feedback}"
      end
    end
  end

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

new_match = Mastermind.new
new_match.play
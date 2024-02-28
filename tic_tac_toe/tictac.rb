
require_relative 'player'

class TicTacToe
  attr_accessor :finish, :table, :rotation, :win, :player_1, :player_2

  def initialize
    @player_1 = Player.new "X"
    @player_2 = Player.new "O"
    @table = Array.new(3) { Array.new(3) { " " } }
    @finish = false
    @rotation = "Player 01"
    @win = "EMPATE!"

    play 
  end

  def play
    welcome
    until finish
      display_board
      puts "#{rotation} escolha uma opção de jogada(letra, número):"
      position = gets.chomp
      if valid_position? position
        register_play position
        check_game_end
        rotation == "Player 01" ? self.rotation = "Player 02" : self.rotation = "Player 01"
        system("clear")
      else
        puts "JOGADA INVÁLIDA! INSIRA UM CAMPO CORRETO"
      end
    end
    display_board
    puts "Resultado Final: #{win}"
  end

   def welcome
    puts "Olá, sejam bem vindos(as)!"
    puts "Player01 jogará com 'X'"
    puts "Player02 jogará com 'O'"
  end

  def display_board
    puts "JOGO DA VELHA"
    puts "  A B C "
    puts "0 #{table[0][0]}|#{table[0][1]}|#{table[0][2]}"
    puts "1 #{table[1][0]}|#{table[1][1]}|#{table[1][2]}"
    puts "2 #{table[2][0]}|#{table[2][1]}|#{table[2][2]}"
    puts "-------------"
  end

  def register_play(position)
    array_play = position.split('')
    column = case array_play[0].upcase
             when "A" 
              0
             when "B"
              1
             when "C"
              2
            end
    line = array_play[1].to_i
    if rotation == "Player 01"
      self.table[line][column] = self.player_1.symbol
    else
      self.table[line][column] = self.player_2.symbol
    end
  end

  def valid_position?(position)
    array_play = position.split('')
    column = case array_play[0].upcase
             when "A" 
              0
             when "B"
              1
             when "C"
              2
             else
              false
            end
    line = array_play[1].match?(/[A-Z|a-z]/) ? false : array_play[1].to_i
    if !column || !line
      false
    elsif self.table[line][column] != " "
      false
    else
      true
    end
  end

  def check_game_end
    if player_win?
      self.finish = true
      self.win = rotation
    elsif self.table.all? { |array| array.all? { |value| value != ' '}}
      self.finish = true
    end
  end

  def player_win?
    first_line = table[0].all? { |value| table[0][0] == value && value != ' '}
    second_line = table[1].all? { |value| table[1][0] == value && value != ' '}
    third_line = table[2].all? { |value| table[2][0] == value && value != ' '}
    column_one = [table[0][0], table[1][0], table[2][0]]
    column_two = [table[0][1], table[1][1], table[2][1]]
    column_three = [table[0][2], table[1][2], table[2][2]]
    main_axis =  [table[0][0], table[1][1], table[2][2]]
    cross_axis =  [table[0][2], table[1][1], table[2][0]]

    if first_line || second_line || third_line
      true
    elsif column_one.all? {|value| column_one[0] == value && value != ' '}
      true
    elsif column_two.all? {|value| column_two[0] == value && value != ' '}
      true
    elsif column_three.all? {|value| column_three[0] == value && value != ' '}
      true
    elsif main_axis.all? {|value| main_axis[0] == value && value != ' '}
      true
    elsif cross_axis.all? {|value| cross_axis[0] == value && value != ' '}
      true
    else
      false
    end
  end
end

TicTacToe.new
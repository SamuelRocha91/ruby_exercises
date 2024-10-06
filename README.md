# <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" /> Armazenador de Exercícios do The Odin Project em Ruby <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" />

Este repositório serve como um armazenador de exercícios propostos pela plataforma **The Odin Project**, focando na linguagem de programação **Ruby**.

<details>
  <summary><h2>📖 Sobre o Projeto</h2></summary>

  O **The Odin Project** é uma plataforma educacional que oferece um currículo completo de desenvolvimento web. Este repositório foi criado para acompanhar e armazenar os exercícios práticos propostos durante o curso relacionado à linguagem de programação Ruby. Cada exercício é uma oportunidade de praticar e aprimorar suas habilidades em programação.

</details>

<details>
  <summary><h2>📁 Estrutura do Repositório</h2></summary>

  O repositório está organizado em pastas temáticas, cada uma representando uma seção ou módulo específico do curso. Dentro de cada pasta, você encontrará os exercícios propostos, acompanhados por seus respectivos códigos-fonte, soluções ou quaisquer informações adicionais relevantes.

  ### Pastas do Repositório

  - **basic_ruby_projects**: Projetos básicos de Ruby que abordam conceitos fundamentais e métodos.
    - Exemplo: Implementação de um método de ordenação por bolha (`#bubble_sort`):
  
      ```ruby
      def bubble_sort(array)
        max_index = array.length - 1
        (0..max_index - 1).each do |index|
          (index + 1..max_index).each do |index_2|
            number_1 = array[index]
            number_2 = array[index_2]
            if number_1 > number_2
              intermediate = number_1
              array[index] = number_2
              array[index_2] = intermediate
            end
          end
        end
        array
      end

      p bubble_sort([4, 3, 78, 2, 0, 2])
      ```

  - **mastermind**: Implementações do jogo Mastermind, onde os conceitos de lógica e controle de fluxo são aplicados.
  
  - **poo**: Exercícios focados em Programação Orientada a Objetos, incluindo a criação de classes e objetos.

  - **tic_tac_toe**: Implementação do jogo da velha, aplicando conceitos de lógica de jogo e interatividade.

</details>

<details>
  <summary><h2>📝 Exemplos de Exercícios</h2></summary>

  Aqui estão alguns exemplos de exercícios incluídos no repositório:

  1. **Cifra de César**: Implementação de um método que aplica a cifra de César em uma string.

      ```ruby
      def caesar_cipher(phrase, displacement)
        phrase_array = phrase.split(' ')
        final_array = []
        phrase_array.each do |word|
          intermediate_array = []
          word.split('').each do |letter| 
            num = letter.ord
            if letter.match(/[A-Z|a-z]/)
              if num.between?(65, 90)
                tot = num + displacement
                tot > 90 ? tot = (tot - 90) + 64 : tot
                intermediate_array << tot.chr
              else
                tot = num + displacement
                tot > 122 ? tot = (tot - 122) + 97 : tot
                intermediate_array << tot.chr
              end
            else
              intermediate_array << letter
            end
          end
          final_array << intermediate_array.join('')
        end
        final_array.join(' ')
      end

      p caesar_cipher("What a string!", 5)
      ```

  2. **Escolha de Ações**: Método que determina o melhor dia para comprar e vender ações, maximizando o lucro.

      ```ruby
      def stock_picker(stock_prices)
        day_buy = 0
        day_sale = 0
        profit = 0
        stock_prices.each_with_index do |price, index|
          (index + 1..stock_prices.length - 1).each do |index_2|
            price_2 = stock_prices[index_2]
            subtraction = price_2 - price
            if subtraction.positive? && subtraction > profit
              day_buy = index
              day_sale = index_2
              profit = subtraction
            end
          end
        end
        [day_buy, day_sale]
      end

      p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
      ```

</details>

<details>
  <summary><h2>🔗 Outros Repositórios</h2></summary>

  - 🎥 [Rails Movie](https://github.com/SamuelRocha91/rails_movies_catalog)

</details>

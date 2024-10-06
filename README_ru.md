# <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" /> Хранилище упражнений The Odin Project на Ruby <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" />

Этот репозиторий служит хранилищем упражнений, предложенных платформой **The Odin Project**, сосредоточенной на языке программирования **Ruby**.

<details>
  <summary><h2>📖 О проекте</h2></summary>

  **The Odin Project** — это образовательная платформа, предлагающая полный учебный план веб-разработки. Этот репозиторий был создан для отслеживания и хранения практических упражнений, предлагаемых в курсе по языку программирования Ruby. Каждое упражнение является возможностью попрактиковаться и улучшить свои навыки программирования.

</details>

<details>
  <summary><h2>📁 Структура репозитория</h2></summary>

  Репозиторий организован по тематическим папкам, каждая из которых представляет собой раздел или модуль конкретного курса. В каждой папке вы найдете предлагаемые упражнения, сопровождаемые соответствующими исходными кодами, решениями или любой другой важной информацией.

  ### Папки репозитория

  - **basic_ruby_projects**: Основные проекты на Ruby, охватывающие фундаментальные концепции и методы.
    - Пример: Реализация метода сортировки пузырьком (`#bubble_sort`):
  
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

  - **mastermind**: Реализации игры Mastermind, где применяются концепции логики и управления потоком.
  
  - **poo**: Упражнения, сосредоточенные на объектно-ориентированном программировании, включая создание классов и объектов.

  - **tic_tac_toe**: Реализация игры в крестики-нолики, применяющая концепции логики игры и интерактивности.

</details>

<details>
  <summary><h2>📝 Примеры упражнений</h2></summary>

  Вот некоторые примеры упражнений, включенных в репозиторий:

  1. **Шифр Цезаря**: Реализация метода, который применяет шифр Цезаря к строке.

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

  2. **Выбор акций**: Метод, который определяет лучший день для покупки и продажи акций, максимизируя прибыль.

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
  <summary><h2>🔗 Другие репозитории</h2></summary>

  - 🎥 [Rails Movie](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md)

</details>

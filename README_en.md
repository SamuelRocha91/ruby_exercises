# <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" /> Exercise Storage of The Odin Project in Ruby <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" />

This repository serves as a storage for exercises proposed by the **The Odin Project** platform, focusing on the **Ruby** programming language.

<details>
  <summary><h2>📖 About the Project</h2></summary>

  **The Odin Project** is an educational platform that offers a complete web development curriculum. This repository was created to track and store the practical exercises proposed during the course related to the Ruby programming language. Each exercise is an opportunity to practice and improve your programming skills.

</details>

<details>
  <summary><h2>📁 Repository Structure</h2></summary>

  The repository is organized into thematic folders, each representing a specific section or module of the course. Within each folder, you will find the proposed exercises, accompanied by their respective source codes, solutions, or any relevant additional information.

  ### Repository Folders

  - **basic_ruby_projects**: Basic Ruby projects that address fundamental concepts and methods.
    - Example: Implementation of a bubble sort method (`#bubble_sort`):
  
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

  - **mastermind**: Implementations of the Mastermind game, where logic and control flow concepts are applied.
  
  - **poo**: Exercises focused on Object-Oriented Programming, including class and object creation.

  - **tic_tac_toe**: Implementation of the tic-tac-toe game, applying game logic and interactivity concepts.

</details>

<details>
  <summary><h2>📝 Exercise Examples</h2></summary>

  Here are some examples of exercises included in the repository:

  1. **Caesar Cipher**: Implementation of a method that applies the Caesar cipher to a string.

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

  2. **Stock Picker**: Method that determines the best day to buy and sell stocks, maximizing profit.

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
  <summary><h2>🔗 Other Repositories</h2></summary>

  - 🎥 [Rails Movie](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md)

</details>

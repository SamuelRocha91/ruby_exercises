# <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" /> The Odin Project 的 Ruby 练习存储库 <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" />

该存储库作为 **The Odin Project** 提供的练习的存储库，专注于编程语言 **Ruby**。

<details>
  <summary><h2>📖 项目介绍</h2></summary>

  **The Odin Project** 是一个教育平台，提供完整的网络开发课程。该存储库旨在跟踪和存储在 Ruby 编程语言课程中提出的实践练习。每个练习都是一个练习和提高编程技能的机会。

</details>

<details>
  <summary><h2>📁 存储库结构</h2></summary>

  存储库按主题文件夹组织，每个文件夹代表课程的一个特定部分或模块。在每个文件夹中，您会找到提议的练习，以及相关的源代码、解决方案或任何其他重要信息。

  ### 存储库文件夹

  - **basic_ruby_projects**: 基础 Ruby 项目，涵盖基本概念和方法。
    - 示例：实现冒泡排序方法 (`#bubble_sort`):
  
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

  - **mastermind**: Mastermind 游戏的实现，应用逻辑和控制流的概念。
  
  - **poo**: 专注于面向对象编程的练习，包括类和对象的创建。

  - **tic_tac_toe**: 实现井字棋游戏，应用游戏逻辑和交互性概念。

</details>

<details>
  <summary><h2>📝 练习示例</h2></summary>

  下面是一些包含在存储库中的练习示例：

  1. **凯撒密码**: 实现一个方法，将凯撒密码应用于字符串。

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

  2. **股票选择**: 确定最佳的买入和卖出日期的方法，以最大化利润。

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
  <summary><h2>🔗 其他存储库</h2></summary>

  - 🎥 [Rails Movie](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_zh.md)

</details>

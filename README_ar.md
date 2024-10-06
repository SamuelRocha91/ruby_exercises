# <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" /> مستودع تمارين The Odin Project بلغة Ruby <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" />

هذا المستودع يعمل كمستودع للتمارين المقترحة من قبل منصة **The Odin Project**، مع التركيز على لغة البرمجة **Ruby**.

<details>
  <summary><h2>📖 حول المشروع</h2></summary>

  **The Odin Project** هي منصة تعليمية تقدم منهجًا كاملاً لتطوير الويب. تم إنشاء هذا المستودع لمتابعة وتخزين التمارين العملية المقترحة خلال الدورة المتعلقة بلغة البرمجة Ruby. كل تمرين هو فرصة لممارسة وتحسين مهاراتك في البرمجة.

</details>

<details>
  <summary><h2>📁 هيكل المستودع</h2></summary>

  يتم تنظيم المستودع في مجلدات موضوعية، كل واحدة تمثل قسمًا أو وحدة معينة من الدورة. داخل كل مجلد، ستجد التمارين المقترحة، مصحوبة برمز المصدر الخاص بها، أو الحلول، أو أي معلومات إضافية ذات صلة.

  ### مجلدات المستودع

  - **basic_ruby_projects**: مشاريع Ruby الأساسية التي تغطي المفاهيم الأساسية والأساليب.
    - مثال: تنفيذ طريقة الفرز باستخدام الفقاعة (`#bubble_sort`):
  
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

  - **mastermind**: تنفيذ لعبة Mastermind، حيث يتم تطبيق مفاهيم المنطق والتحكم في التدفق.
  
  - **poo**: تمارين تركز على البرمجة الكائنية، بما في ذلك إنشاء الفئات والأشياء.

  - **tic_tac_toe**: تنفيذ لعبة إكس أو، مع تطبيق مفاهيم منطق اللعبة والتفاعل.

</details>

<details>
  <summary><h2>📝 أمثلة على التمارين</h2></summary>

  إليك بعض الأمثلة على التمارين المدرجة في المستودع:

  1. **شيفرة قيصر**: تنفيذ طريقة لتطبيق شيفرة قيصر على سلسلة نصية.

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

  2. **اختيار الأسهم**: طريقة تحدد أفضل يوم لشراء وبيع الأسهم، مما يحقق أقصى ربح.

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
  <summary><h2>🔗 مستودعات أخرى</h2></summary>

  - 🎥 [Rails Movie](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

</details>

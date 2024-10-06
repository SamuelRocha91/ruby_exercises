# <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" /> Almacenador de Ejercicios del The Odin Project en Ruby <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="React Logo" width="42" height="30" />

Este repositorio sirve como un almacenador de ejercicios propuestos por la plataforma **The Odin Project**, centrado en el lenguaje de programación **Ruby**.

<details>
  <summary><h2>📖 Sobre el Proyecto</h2></summary>

  **The Odin Project** es una plataforma educativa que ofrece un currículo completo de desarrollo web. Este repositorio fue creado para seguir y almacenar los ejercicios prácticos propuestos durante el curso relacionado con el lenguaje de programación Ruby. Cada ejercicio es una oportunidad para practicar y mejorar tus habilidades en programación.

</details>

<details>
  <summary><h2>📁 Estructura del Repositorio</h2></summary>

  El repositorio está organizado en carpetas temáticas, cada una representando una sección o módulo específico del curso. Dentro de cada carpeta, encontrarás los ejercicios propuestos, acompañados por sus respectivos códigos fuente, soluciones o cualquier información adicional relevante.

  ### Carpetas del Repositorio

  - **basic_ruby_projects**: Proyectos básicos de Ruby que abordan conceptos fundamentales y métodos.
    - Ejemplo: Implementación de un método de ordenación por burbuja (`#bubble_sort`):
  
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

  - **mastermind**: Implementaciones del juego Mastermind, donde se aplican conceptos de lógica y control de flujo.
  
  - **poo**: Ejercicios centrados en la Programación Orientada a Objetos, incluyendo la creación de clases y objetos.

  - **tic_tac_toe**: Implementación del juego del tres en raya, aplicando conceptos de lógica de juego e interactividad.

</details>

<details>
  <summary><h2>📝 Ejemplos de Ejercicios</h2></summary>

  Aquí hay algunos ejemplos de ejercicios incluidos en el repositorio:

  1. **Cifrado César**: Implementación de un método que aplica el cifrado César a una cadena.

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

  2. **Seleccionador de Acciones**: Método que determina el mejor día para comprar y vender acciones, maximizando el lucro.

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
  <summary><h2>🔗 Otros Repositorios</h2></summary>

  - 🎥 [Rails Movie](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md)

</details>

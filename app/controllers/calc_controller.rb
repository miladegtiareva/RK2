class CalcController < ApplicationController
    def input
    end
  
    def view
      mas = params[:arr_a].split
      prov = 0
        if mas[0] != nil
          k = 0
          pr_0 = 0
          prov3 = 0
          d = mas.length
          d.times do
            if mas[k].to_i > 0  
              pr_0 = 1
            end
            k += 1
          end
          if pr_0 == 1
  
            mas = params[:arr_a].split.map(&:to_i)
            index = mas.find_index { |num| num % 3 == 0 }
            min_value = mas.min
            mas[mas.index(min_value)] = index
            @result = mas.join(' ')
          else
            @result = 'Вы ввели массив без чисел, введите массив с  числами'
          end
        else
         @result = 'Вы не ввели чисел'
        end
  
    end
end

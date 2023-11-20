class CalcController < ApplicationController
    def input
    end
  
    def view
      mas = params[:arr_a].split
      prov = 0
        if mas[0] != nil
          k = 0
          pr_0 = 0
          prov = 0
          d = mas.length
          d.times do
            if mas[k].to_i > 0
              pr_0 = 1
            end
  
            k += 1
          end
          if pr_0 == 1
  
              sum = 0
              k = 0
              index = -1
              d.times do
                if mas[k].to_i > 0
                  sum += mas[k].to_i % 3
                end
                k += 1
              end
              k = 0
              d.times do
                if mas[k].to_i % 2 == 0
                  index = k
                end
                k += 1
              end
              if index != -1
                mas[index] = sum
              end
              @result = mas.join(' ')
    
          else
            @result = 'Вы ввели массив без положительных чисел, введите массив с положительынми числами'
          end
        else
         @result = 'Вы не ввели чисел'
        end
  
    end
end

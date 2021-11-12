module MyEnumerable

    def all?
        each do |n| 
            return false unless yield(n) 
        end
        true
    end
  
    def any?
        each do |n| 
            return true if yield(n)
        end
        false
    end
  
    def filter?
        arr = []
        each do |n| 
            arr.push(n) if yield(n)
        end
        arr
    end
  
  end 
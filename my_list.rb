class MyList
    include MyEnumerable
    
    def initialize (*list)
        @list = list
        puts @list
    end
    def each(&block)
      @list.each do |n|
        block.call(n)
       end
    end
end 
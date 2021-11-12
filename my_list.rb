class MyList
  include Enumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each do |n|
      block.call(n)
    end
  end
end
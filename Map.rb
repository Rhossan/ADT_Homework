class Map
  attr_accessor :map
  def initialize
    @map = []
  end
  def assign(key, value)
    #if key exists
    pair_index = @map.index {|pair| pair[0] == key}
    if pair_index
      @map[pair_index][1] = value
    else
      @map.push([key, value])
    end
    [key,value]
  end

  def lookup(key)
    @map.each do |pair|
       if pair[0] == key
         return pair
       end
    end
    nil
  end

 def remove(key)
  @map.select! {|pair| pair[0] != key}
  nil
 end

 def show
   @map.dup
 end
end

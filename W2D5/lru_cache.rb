class LRUCache
    def initialize(max)
      @cache = []
      @max = max
    end

    def count
      # returns number of elements currently in cache
      @cache.size
    end

    def add(el)
      # adds element to cache according to LRU principle
      if !@cache.include?(el)
        if self.count < max &&
          @cache.unshift(el)
        else
          @cache.pop
          @cache.unshift(el)
        end
      else
        @cache.delete(el)
        @cache.unshift(el)
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache.reverse.each {|el| p el}
    end

    def read
    end

    private
    # helper methods go here!
    attr_accessor :cache, :max
end


  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show

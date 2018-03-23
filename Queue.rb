class Queue
  attr_accessor :queue
  def initialize
    @queue = []
  end
  def enqueue(el)
    @queue.push(el)
  end
  def dequeue
    @queue.shift(el)
  end
  def show
    @queue.dup
  end
end

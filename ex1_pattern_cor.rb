class Handler
  attr_accessor :successor

  def initialize(successor = nil)
    @successor = successor
  end

  def handle_request(request)
    if @successor
      @successor.handle_request(request)
    else
      puts "Request not handled"
    end
  end
end

class ConcreteHandlerA < Handler
  def handle_request(request)
    if request == "A"
      puts "Handler A handles the request"
    else
      super.handle_request(request)
    end
  end
end

class ConcreteHandlerB < Handler
  def handle_request(request)
    if request == "B"
      puts "Handler B handles the request"
    else
      puts "Request not handled"
    end
  end
end

#Приклад використання
handler_a = ConcreteHandlerA.new
handler_b = ConcreteHandlerB.new(handler_a)

handler_b.handle_request("A")
handler_b.handle_request("B")
handler_b.handle_request("C")

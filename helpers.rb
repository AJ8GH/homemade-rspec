def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end

def includes(value)
  Include.new(value)
end

def respond_to(method)
  RespondTo.new(method)
end

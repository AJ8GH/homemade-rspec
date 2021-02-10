def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end

def includes(value)
  Include.new(value)
end

def respond_to(value)
  RespondTo.new(value)
end

def be_a(value)
  BeA.new(value)
end

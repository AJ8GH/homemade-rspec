def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end

def it(example)
  result = yield
  raise_error(example) unless result
  success(example)
end

def raise_error(example)
  raise Exception, "#{example} test failed"
end

def success(example)
  puts "Example: #{example} passed!"
end

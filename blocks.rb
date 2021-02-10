def it(example)
  result = yield
  raise MySpecError, "Example: #{example} failed\nExpected: #{!result}, instead got: #{result}" unless result
  puts "#{example}: Example passed!"
end

def describe(behaviour)
  yield
end

def context(state)
  yield
end

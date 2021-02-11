def it(example)
  result = yield
  raise MySpecError, "Example: #{example} failed\nExpected: #{!result}, instead got: #{result}" unless result
  puts "#{example}\n----------------------------\n"
end

def describe(behaviour)
  puts "#{behaviour}\n"
  yield
end

def context(state)
  puts "#{state}\n"
  yield
end

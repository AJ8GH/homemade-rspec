def it(example)
  result = yield
  raise Exception unless result
  puts "woo! pass"
end

def describe(behaviour)
  yield
end

def context(state)
  yield
end

require_relative 'expect'
require_relative 'equal'
require_relative 'helpers'

# testing homemade RSpec:

it 'states true == true' do
  expect(true).to eq(true)
end

it 'can do basic math' do
  expect(5 + 5).to eq(10)
end

p 'raises error - works!'
# it 'raises error' do
#   expect(1).to eq(3)
# end

it 'works!' do
  expect('Hello World!').to eq('Hello World!')
end

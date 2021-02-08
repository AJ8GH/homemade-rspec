# Homemade RSpec

## Building a homemade version of everyone's favourite Ruby testing framework:

#### Defining the `expect`, `to` and `eq` matcher syntax:

```ruby
expect(true).to eq(true)
```

#### And it block method:

```ruby
it 'works!' do
  expect('Hello World!').to eq('Hello World!')
end
```

#### Success messages for passing examples:

```Ruby
it 'can do basic math' do
  expect(5 + 5).to eq(10)
end
```

```
Example: can do basic math passed!
```

#### And errors for failing ones:

```Ruby
it 'bad math' do
  expect(1).to eq(3)
end
```

```error
/Users/adamjonas/Projects/makers/week-2/building-rspec/helpers.rb:16:in `raise_error': bad math test failed (Exception)
	from /Users/adamjonas/Projects/makers/week-2/building-rspec/helpers.rb:11:in `it'
	from /Users/adamjonas/Projects/makers/week-2/building-rspec/tester_file.rb:16:in `<main>'
```

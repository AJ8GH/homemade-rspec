# Building RSpec


For this mini-project, I set about building the popular Ruby testing framework RSpec from scratch. Partly because it sounded like an interesting challenge, but mainly to better understand how RSpec and testing frameworks in general work under the hood.

RSpec's DSL is very friendly and English-like, but first things first, I had to set up my framework's building blocks before I could add some syntactical sugar.

The first step was defining the all important `expect` and `to` methods, followed by a matcher, starting with `eq` (`expect` and `matchers` are actually classes, which I then wrapped in helper methods to implement the nice looking RSpec syntax)

```ruby
expect(true).to eq(true)
```

I then defined the it block:

```ruby
it 'works!' do
  expect('Hello World!').to eq('Hello World!')
end
```

Success messages for passing examples:

```Ruby
it 'can do basic math' do
  expect(5 + 5).to eq(10)
end
```

```
Example: can do basic math passed!
```

And errors for failing ones:

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

Next was `describe` blocks:

```Ruby
describe 'include matcher' do
  it 'works on strings' do
    expect('abc').to includes 'a'
  end

  it 'can do include with arrays' do
    expect([1, 2, 3]).to includes 2
  end
end
```

And `context` blocks:
```Ruby
describe 'be_a' do
  context 'when used on numerics' do
    it 'works on Integers' do
      expect(2).to be_a Integer
    end

    it 'works on floats' do
      expect(0.8).to be_a Float
    end
  end
end
```

I also defined some additional matchers along the way, including `respond_to`, `be_a` and `include`

Finally I improved my framework's communication skills by adding messages from the `describe`, `context` and `it` blocks to passing and failing tests:

```
be_a
when used on numerics
works on Integers
----------------------------
works on floats
----------------------------
```

There we go! A working version of Rspec complete with describe, context, it and a number of matchers.

Ok, so it's probably not going to be replacing the real thing anytime soon. But it was definitely helpful in demistifying some of the magic in the RSpec black box.

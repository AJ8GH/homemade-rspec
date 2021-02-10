require_relative 'spec_helper'

describe 'Building RSpec' do
  describe 'eq matcher' do
    it 'states true == true' do
      expect(true).to eq(true)
    end

    it 'does eq with math' do
      expect(5 + 5).to eq(10)
    end

    it 'does eq with strings' do
      expect('Hello World!').to eq('Hello World!')
    end
  end

  describe 'include matcher' do
    it 'does include with strings' do
      expect('abc').to includes 'a'
    end

    it 'can do include with arrays' do
      expect([1, 2, 3]).to includes 2
    end
  end

  describe 'respond_to matcher' do
    it 'does respond to with strings' do
      expect([]).to respond_to :map
    end

    it 'does respond to with symbols' do
      expect(:hello).to respond_to :to_s
    end
  end

  describe 'be_a' do
    expect(2).to be_a Integer
  end
end
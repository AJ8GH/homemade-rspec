require_relative 'spec_helper'

describe 'Building RSpec' do
  context 'to understand it better' do
    describe 'eq matcher' do
      it 'states true == true' do
        expect(true).to eq(true)
      end

      it 'works on math' do
        expect(5 + 5).to eq(10)
      end

      it 'works on strings' do
        expect('Hello World!').to eq('Hello World!')
      end
    end
  end

  describe 'include matcher' do
    it 'works on strings' do
      expect('abc').to includes 'a'
    end

    it 'can do include with arrays' do
      expect([1, 2, 3]).to includes 2
    end
  end

  describe 'respond_to matcher' do
    it 'works on arrays' do
      expect([]).to respond_to :map
    end

    it 'works on symbols' do
      expect(:hello).to respond_to :to_s
    end
  end

  describe 'be_a' do
    context 'when used on numerics' do
      it 'works on Integers' do
        expect(2).to be_a Integer
      end

      it 'works on floats' do
        expect(0.8).to be_a Float
      end
    end

    context 'when used on enumerables' do
      it 'uses be_a to determine any class' do
        expect({}).to be_a Hash
      end

      it 'works on arrays' do
        expect([5]).to be_a Array
      end
    end

    context 'when used on the Class class' do
      it 'works :)' do
        expect(Object).to be_a Class
      end
    end
  end
end

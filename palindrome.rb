require "rspec/autorun"

class Palindrome
  def initialize(input)
    @input = input.to_s
  end
  
  def is_palindrome?
    # Recursive solution
    return true if [0, 1].include? @input.length

    if @input[0] == @input[-1]
      @input = @input[1..-2]
      return is_palindrome?
    else
      return false 
    end
  end
end

# unit test
describe Palindrome do
  context '#is_palindrome?' do 
    context 'input is palinedrome' do
      it 'it should return true' do 
        palindrome = described_class.new('viv')
        expect(palindrome.is_palindrome?).to eql true
      end
    end

    context 'input is not palinedrome' do
      it 'it should return false' do 
        palindrome = described_class.new('viet')
        expect(palindrome.is_palindrome?).to eql false
      end
    end
  end
end

# Time complexity O(n/2 + 1)


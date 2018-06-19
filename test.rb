require 'rspec'
require 'rubocop'

def fizzbuzz(max)
  (1..max).map  { |i| (a = "#{['fizz'][i % 5]}#{['buzz'][i % 3]}").empty? ? i : a }
          .each { |a| puts a }
end

describe 'fizzbuzz' do
  it 'kills all humans' do
    expect do
      fizzbuzz(10)
    end.to output("1\n2\nbuzz\n4\nfizz\nbuzz\n7\n8\nbuzz\nfizz\n").to_stdout
  end
end

require 'rspec/autorun'
require 'pry'

class Calculator
  def calculate(expression)
    array = expression.split(' ')
    stack = []
    array.each do |ele|
      if ele.numeric?
        stack.push(ele.to_i)
      else
        a,b = stack.pop(2)
        stack.push(a.send(ele, b))
      end
      puts "#{ele} - #{stack}"
    end
    stack.pop
  end
end

# regex solution
# class Calculator
#   def calculate(expression)
#     array = expression.split(' ')
#     stack = []
#     array.each do |ele|
#       case ele
#         when /\d/
#           stack.push(ele.to_i)
#         when "-", "/", "*", "+"
#           a,b = stack.pop(2)
#           stack.push(a.send(ele, b))
#       end
#     end
#     stack.pop
#   end
# end

class String
  def numeric?
    Float(self) != nil rescue false
  end
end


RSpec.describe Calculator do
  before :each do
    @calc = Calculator.new
  end
  
  {
    '1 2 +' => 3,
    '2 1 -' => 1,
    '2 3 *' => 6,
    '4 2 /' => 2,
    
    '-5 1 +' => -4,
    '2 4 -' => -2,
    '-2 3 *' => -6,
    '-4 2 /' => -2,
    
    '1 2 + 4 -' => -1,
    '1 3 5 + -' => -7,
    
    
    '2 2 * 2 /' => 2,
    '2 7 + 3 *' => 27,

    '10 2 3 + /' => 2,
    '10 2 / 5 +' => 10,
  }.each_with_index do |val,index|
    it "##{index}" do
      expect(@calc.calculate(val[0])).to eq(val[1])
    end
  end
end

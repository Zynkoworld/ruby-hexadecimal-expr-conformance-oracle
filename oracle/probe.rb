class Hexadecimal
  BASE = 16

  attr_reader :digits
  def initialize(decimal)
    @digits = decimal.reverse.chars
  end

  def to_decimal
    return 0 unless valid?

    decimal = 0
    digits.each_with_index do |digit, index|
      decimal += values[digit] * BASE**index
    end
    decimal
  end

  def valid?
    !digits.to_a.join('')[/[^0-9a-f]/, 0]
  end

  def values
    {
      '0' => 0,
      '1' => 1,
      '2' => 2,
      '3' => 3,
      '4' => 4,
      '5' => 5,
      '6' => 6,
      '7' => 7,
      '8' => 8,
      '9' => 9,
      'a' => 10,
      'b' => 11,
      'c' => 12,
      'd' => 13,
      'e' => 14,
      'f' => 15
    }
  end
end

require 'json'
__exprs = JSON.parse("[\"Hexadecimal.new('1').to_decimal\", \"Hexadecimal.new('c').to_decimal\", \"Hexadecimal.new('10').to_decimal\", \"Hexadecimal.new('af').to_decimal\", \"Hexadecimal.new('100').to_decimal\", \"Hexadecimal.new('19ace').to_decimal\", \"Hexadecimal.new('carrot').to_decimal\", \"Hexadecimal.new('000000').to_decimal\", \"Hexadecimal.new('ffffff').to_decimal\", \"Hexadecimal.new('ffff00').to_decimal\"]")
__out = []
__exprs.each do |e|
  begin
    __out << {ok: true, v: eval(e)}
  rescue => ex
    __out << {ok: false, e: ex.class.to_s}
  end
end
puts JSON.generate({out: __out})

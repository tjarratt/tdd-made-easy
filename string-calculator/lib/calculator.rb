module Calculator
  def self.add(args)
    return 0 if args.empty?

    iterator = iterator_from(args)
    args
      .split(iterator)
      .map(&:to_i)
      .tap {|input| validate_non_negative(input) }
      .filter {|input| input < 1000 }
      .inject(:+)
  end

  def self.iterator_from(args)
    return args[2] if args.start_with?("//")

    return /[,\n]/
  end

  def self.validate_non_negative(input)
    invalid = input.filter { |i| i < 0 }
    return if invalid.empty?

    raise InvalidInputException.new(invalid)
  end

  class InvalidInputException < Exception
    def initialize(input)
      @input = input
    end

    def message
      "negatives not allowed (#{@input.join(', ')})"
    end
  end
end

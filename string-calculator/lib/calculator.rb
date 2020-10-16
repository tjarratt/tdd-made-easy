module Calculator
  def self.add(args)
    return 0 if args.empty?

    iterator, input = iterator_from(args)

    input
      .split(iterator)
      .map(&:to_i)
      .tap {|input| validate_non_negative(input) }
      .filter {|input| input < 1000 }
      .inject(:+)
  end

  def self.iterator_from(args)
    match = args.match(/\/\/\[(.+)\]\n(.+)/)

    return [match.captures[0], match.captures[1]] unless match.nil?
    return [args[2], args[4..]]                   if args.start_with?("//")

    return [/[,\n]/, args]
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

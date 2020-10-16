module Calculator
  def self.add(args)
    return 0 if args.empty?

    if args.start_with?("//")
      return args.split(args[2]).map(&:to_i).inject(:+)
    end

    args.split(/[,\n]/).map(&:to_i).inject(:+)
  end
end

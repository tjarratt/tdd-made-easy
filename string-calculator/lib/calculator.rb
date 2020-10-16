module Calculator
  def self.add(args)
    return 0 if args.empty?

    args.split(/[,\n]/).map(&:to_i).inject(:+)
  end
end

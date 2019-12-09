class Enum
  class << self
    include Enumerable

    def each(&block)
      if block_given?
        self.constants.map { |v| block.call v }
      else
        self.constants.to_enum(:each)
      end
    end

    def inspect
      self.constants.inspect
    end

    def value_of(const)
      self.const_get const
    end
    alias [] value_of

    def to_h
      entries.map { |v| [v, self.value_of(v)] }.to_h
    end

    def values
      entries.map { |v| self.value_of(v) }
    end

    def get_const(val)
      entries.detect { |v| self.value_of(v) == val }
    end

    def entries
      super.entries.map(&:to_s)
    end

    def include?(val)
      values.include?(val)
    end
  end
end

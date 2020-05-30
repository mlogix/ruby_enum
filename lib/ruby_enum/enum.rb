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

    def to_h(downcase: false, symbolize: false)
      entries.map do |v|
        key = downcase ? v.downcase : v
        key = key.to_sym if symbolize

        [ key, self.value_of(v)]
      end.to_h
    end

    def values(downcase: false)
      entries.map { |v| downcase ? self.value_of(v).downcase : self.value_of(v) }
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

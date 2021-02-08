class Equal
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def compare(value)
    self.value == value
  end
end

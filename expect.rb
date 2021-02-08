require_relative 'equal'

class Expect < Equal

  def to(equal)
    compare(equal)
  end

  def not_to(equal)
    !compare(equal)
  end

  private

  def compare(equal)
    self.value == equal.value
  end
end

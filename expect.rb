class Expect
  attr_reader :subject

  def to(matcher)
    compare(matcher)
  end

  def initialize(subject)
    @subject = subject
  end

  private

  def compare(matcher)
    matcher.compare?(self.subject)
  end
end

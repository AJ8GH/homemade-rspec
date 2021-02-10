require_relative 'matcher'

class Include
  include Matcher

  def compare?(subject)
    subject.include?(self.value)
  end
end

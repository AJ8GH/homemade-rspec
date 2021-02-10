require_relative 'matcher'

class BeA
  include Matcher

  def compare?(subject)
    subject.class == value
  end
end

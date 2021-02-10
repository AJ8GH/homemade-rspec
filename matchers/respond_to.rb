require_relative 'matcher'

class RespondTo
  include Matcher

  def compare?(subject)
    subject.respond_to?(value)
  end
end

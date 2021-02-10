require_relative 'matcher'

class Equal
  include Matcher
  
  def compare?(subject)
    subject == self.value
  end
end

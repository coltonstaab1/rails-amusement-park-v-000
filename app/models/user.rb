class User < ActiveRecord::Base

  def mood
    self.nausea > self.happiness ? "sad" : "happy"
  end

end

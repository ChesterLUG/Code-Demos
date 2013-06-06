class Phone
  attr_reader :number

  def dial
  end

  def answer
  end
end

class VoipPhone < Phone
  def connect
    super.dial
  end

  # unneeded; will be inherited and call Phone#answer
  # def answer
  # end
end

class RotaryPhone < Phone
end

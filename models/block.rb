class Block
  def initialize(symbol = '.', attributes = [])
    @symbol = symbol
    @attributes = attributes
  end

  def to_s
    @symbol
  end

  def forms_matches?
    @attributes.include? 'forms_matches'
  end

  def does_not_fall?
    @attributes.include? 'does_not_fall'
  end
end

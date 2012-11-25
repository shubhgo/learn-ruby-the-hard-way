class Lexicon

  Pair = Struct.new(:token, :word)

  def initialize()
  end

  DIRECTIONS = [ 'north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back']
  VERBS = [ 'go', 'stop', 'kill', 'eat']
  STOP_WORDS = [ 'the', 'in' , 'of', 'from', 'at', 'it']
  NOUNS = [ 'door', 'bear', 'princess', 'cabinet']

  def scan(words)
    pairs = []

    for word in words.split(" ")

      if DIRECTIONS.include?word
        # check directions
        pairs.push(Pair.new( :direction, word))
      elsif VERBS.include?word
        # check verbs
        pairs.push(Pair.new( :verb, word))
      elsif STOP_WORDS.include?word
        # check stop words
        pairs.push(Pair.new( :stop, word))
      elsif NOUNS.include?word
        # check nouns
        pairs.push(Pair.new( :noun, word))
      elsif (converted_number = convert_number(word))
        # check number
        pairs.push(Pair.new( :number, converted_number))
      else
        # error
        pairs.push(Pair.new( :error, word))
      end

    end

    #return
    pairs
  end

  #integer check
  def convert_number(word)
    begin
      Integer(word)
    rescue ArgumentError
      nil
    end
  end

end
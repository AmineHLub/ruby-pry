require 'pry'
class Word
  def initialize(word)
    @word = word
  end

  def upcase
    if downcase_checker
      @word.upcase
    else
      'this word is upcased already'
    end
  end

  def downcase
    if upcase_checker
      @word.downcase
    else
      'this word is downcased already'
    end
  end

  private

  def downcase_checker
    !!@word.match(/\p{Upper}/)
  end

  def upcase_checker
    !!@word.match(/\p{Lower}/)
  end
end

test = Word.new('hey')
puts test.upcase
puts test.downcase

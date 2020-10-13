class Game
  TOTAL_ERRORS_ALLOWED = 7
  
  def initialize(word)
    @letters = word.chars
    @user_guesses = []
  end
  
  def normilize_letter(letter)
    return "Е" if letter == 'Ё'
    return "И" if letter == 'Й'
    letter 
  end
  
  def normalized_letters
    @letters.map { |letter| normilize_letter(letter)}
  end

  def errors
    @user_guesses - normalized_letters
  end

  def errors_made
    errors.length
  end

  def errors_allowed
    TOTAL_ERRORS_ALLOWED - errors_made
  end

  def letters_to_guess
      @letters.map do |letter|
        if @user_guesses.include?(normilize_letter(letter))
          letter
        end
      end
  end

  def lost?
    errors_allowed == 0
  end

  def over?
    won? || lost?
  end

  def play!(letter)
    if !over? && !@user_guesses.include?(normilize_letter(letter))
      @user_guesses << normilize_letter(letter)
    end
  end

  def won?
    (normalized_letters - @user_guesses).empty?
  end

  def word
    @letters.join
  end
end

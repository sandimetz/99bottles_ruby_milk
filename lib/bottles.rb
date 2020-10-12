class Bottles
  def song
    verses(99,0)
  end

  def verses(upper, lower)
    upper.downto(lower).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of milk on the wall, " +
      "no more bottles of milk.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of milk on the wall.\n"
    when 1
      "#{number} #{container(number)} of milk on the wall, " +
      "#{number} #{container(number)} of milk.\n" +
      "Take it down and pass it around, " +
      "no more bottles of milk on the wall.\n"
    else
      "#{number} #{container(number)} of milk on the wall, " +
      "#{number} #{container(number)} of milk.\n" +
      "Take #{pronoun} down and pass it around, " +
      "#{number-1} #{container(number-1)} of milk on the wall.\n"
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number=:FIXME)
    "one"
  end
end
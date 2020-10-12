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
      "#{quantity(number).capitalize} #{container(number)} of milk on the wall, " +
      "#{quantity(number)} #{container(number)} of milk.\n" +
      "#{action(number)}, " +
      "#{quantity(99)} bottles of milk on the wall.\n"
    else
      "#{quantity(number).capitalize} #{container(number)} of milk on the wall, " +
      "#{quantity(number)} #{container(number)} of milk.\n" +
      "#{action(number)}, " +
      "#{quantity(number-1)} #{container(number-1)} of milk on the wall.\n"
    end
  end

  def quantity(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end
end
class Bottles
  def verse(number)
    if number == 2
      "2 bottles of milk on the wall, " +
      "2 bottles of milk.\n" +
      "Take one down and pass it around, " +
      "1 bottle of milk on the wall.\n"
    else
      "#{number} bottles of milk on the wall, " +
      "#{number} bottles of milk.\n" +
      "Take one down and pass it around, " +
      "#{number-1} bottles of milk on the wall.\n"
    end
  end
end
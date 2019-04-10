def water_status(minutes)
    if minutes < 7
      puts "The water is not boiling yet."
    elsif minutes == 7
      puts "It's just barely boiling"
    elsif minutes == 8
      puts "It's boiling!"
    else
      puts "Hot! Hot! Hot!"
    end
  end

  # run method with difference parameter
  water_status(5)  有puts,但是没有return
  water_status(7)
  water_status(8)
  water_status(9)
  =符号表示赋值。表示“拿右边的东西，把它粘在左边的任何东西” ==表示为这是一个问题。表示“右边的东西是等于左边的东西吗？
  还可以使用逻辑运算符组合条件语句。 最常见的是“逻辑与”和“逻辑或”。 在Ruby中，您可以使用这样的双符号(&&)来书写表示一个“逻辑和”。可以用这样的双管道(||)书写表示一个“逻辑或”。
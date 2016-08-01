class CalcController

  def initialize
    @stored = []
  end

  def main_menu

    puts "What type of equation is to be analyzed:"
    puts "1 - Addition"
    puts "2 - Subtraction"
    puts "3 - Multiplication"
    puts "4 - Division"
    puts "5 - Modulo"
    puts "6 - See Stored Data"
    puts "7 - Exit"
    print "Enter your selection: "

    selection = gets.to_i

    case selection
    when 1
      system "clear"
      addition
    when 2
      system "clear"
      subtraction
    when 3
      system "clear"
      multiplication
    when 4
      system "clear"
      division
      main_menu
    when 5
      system "clear"
      modulo
    when 6
      system "clear"
      stored_number
    when 7
      puts "Good-bye!"

      exit(0)
    else
      system "clear"
      puts "Sorry, that is not a valid input"
      main_menu
    end
  end

  def addition
    system "clear"
    if @stored.length > 0
      puts "Would you like to used stored data for the first number #{@stored}?"
      answer = gets.downcase.chomp
      if (answer == "yes") || (answer == "y")
        num1 = @stored[0]
      else
        puts "Enter your first number:"
        num1 = gets.to_i
      end
    else
      puts "Enter your first number:"
      num1 = gets.to_i
    end
    puts "Enter your second number: "
    num2 = gets.to_i
    puts "Answer: #{num1} + #{num2} = #{num1 + num2}"
    puts "Store this result? Y/N"
    answer = gets.downcase.chomp
    if (answer == "yes") || (answer == "y")
      @stored[0] = (num1 + num2)
      system "clear"
      main_menu
    else
      system "clear"
      main_menu
    end
  end

  def subtraction
    system "clear"
    if @stored.length > 0
      puts "Would you like to used stored data for the first number #{@stored}?"
      answer = gets.downcase.chomp
      if (answer == "yes") || (answer == "y")
        num1 = @stored[0]
      else
        puts "Enter your first number:"
        num1 = gets.to_i
      end
    else
      puts "Enter your first number:"
      num1 = gets.to_i
    end
    puts "Enter your second number: "
    num2 = gets.to_i
    puts "Answer: #{num1} - #{num2} = #{num1 - num2}"
    puts "Store this result? Y/N"
    answer = gets.downcase.chomp
    if (answer == "yes") || (answer == "y")
      @stored[0] = (num1 - num2)
      system "clear"
      main_menu
    else
      system "clear"
      main_menu
    end
  end

  def multiplication
    system "clear"
    if @stored.length > 0
      puts "Would you like to used stored data for the first number #{@stored}?"
      answer = gets.downcase.chomp
      if (answer == "yes") || (answer == "y")
        num1 = @stored[0]
      else
        puts "Enter your first number:"
        num1 = gets.to_i
      end
    else
      puts "Enter your first number:"
      num1 = gets.to_i
    end
    puts "Enter your second number: "
    num2 = gets.to_i
    puts "Answer: #{num1} x #{num2} = #{num1 * num2}"
    puts "Store this result? Y/N"
    answer = gets.downcase.chomp
    if (answer == "yes") || (answer == "y")
      @stored[0] = (num1 * num2)
      system "clear"
      main_menu
    else
      system "clear"
      main_menu
    end
  end

  def division
    system "clear"
    if @stored.length > 0
      puts "Would you like to used stored data for the first number #{@stored}?"
      answer = gets.downcase.chomp
      if (answer == "yes") || (answer == "y")
        num1 = @stored[0]
      else
        puts "Enter your first number:"
        num1 = gets.to_i
      end
    else
      puts "Enter your first number:"
      num1 = gets.to_i
    end
    puts "Enter your second number: "
    num2 = gets.to_i
    puts "Answer: #{num1} / #{num2} = #{num1 / num2}"
    puts "Store this result? Y/N"
    answer = gets.downcase.chomp
    if (answer == "yes") || (answer == "y")
      @stored[0] = (num1 / num2)
      system "clear"
      main_menu
    else
      system "clear"
      main_menu
    end
  end

  def modulo
    system "clear"
    if @stored.length > 0
      puts "Would you like to used stored data for the first number #{@stored}?"
      answer = gets.downcase.chomp
      if (answer == "yes") || (answer == "y")
        num1 = @stored[0]
      else
        puts "Enter your first number:"
        num1 = gets.to_i
      end
    else
      puts "Enter your first number:"
      num1 = gets.to_i
    end
    puts "Enter your second number: "
    num2 = gets.to_i
    puts "Answer: #{num1} % #{num2} = #{num1 % num2}"
    puts "Store this result? Y/N"
    answer = gets.downcase.chomp
    if (answer == "yes") || (answer == "y")
      @stored[0] = (num1 % num2)
      system "clear"
      main_menu
    else
      system "clear"
      main_menu
    end
  end

  def stored_number
    system "clear"
    puts @stored[0]
    puts "Return to main menu? Y/N"
    answer = gets.downcase.chomp
    if (answer == "yes") || (answer == "y")
      system "clear"
      main_menu
    else
      puts "Good-bye!"

      exit(0)
    end
  end

end

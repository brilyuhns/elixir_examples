defmodule Conditions do
  
  def cond_test1(val) do
    cond do 
      val + 1 == 2 ->
        "equals 2 condition matched"
      val + 1 == 3 ->
        "equals 3 condition matched"
      true ->
         "Else condition matched"
    end
  end

  def if_else_test(val) do 
    if val do
      "Condition met!"
    else
      "Condition not met"
    end
  end

end


IO.puts "Conditions.if_else_test(true)"
IO.puts Conditions.if_else_test(true)
IO.puts "--------"
IO.puts "Conditions.if_else_test(false)"
IO.puts Conditions.if_else_test(false)
IO.puts "--------"
IO.puts "Conditions.if_else_test(nil)"
IO.puts Conditions.if_else_test(nil)
IO.puts "--------"
IO.puts "Conditions.cond_test1(1)"
IO.puts Conditions.cond_test1(1)
IO.puts "--------"
IO.puts "Conditions.cond_test1(2)"
IO.puts Conditions.cond_test1(2)
IO.puts "--------"
IO.puts "Conditions.cond_test1(3)"
IO.puts Conditions.cond_test1(3)
IO.puts "--------"
IO.puts "Conditions.cond_test1(-5) will also match true."
IO.puts Conditions.cond_test1(-5)
IO.puts "--------"
IO.puts "Conditions.cond_test1(false)"
IO.puts Conditions.cond_test1(false)
IO.puts "--------"

defmodule Conditions do
  def case_test1(list) do 
    case list do
      {4, 5, 6} ->
        "This clause won't match"
      {1, x, 3} ->
        IO.puts "x = #{x}"
        "This clause will match and bind x to 2 in this clause"
      _ ->
        "This clause would match any value"
    end
  end

  def match_against_existing_variable(x) do
    case 10 do 
      ^x ->
        "case 10 is matched"
      _ ->
        "Else case matched"
    end
  end

  def clause_with_guards(list) do 
    case list do
      {1, x, 3} when x > 0 ->
        "List with gaurd condition matched"      
      {1, x, 3} ->
        "List without gaurd condition matched"
      _ ->
        "list with or without guard condition not matched"
    end
  end
end

IO.puts "Conditions.case_test1({1, 2, 3})"
IO.puts Conditions.case_test1({1, 2, 3})
IO.puts "--------"
IO.puts "Conditions.match_against_existing_variable(10)"
IO.puts Conditions.match_against_existing_variable(10)
IO.puts "--------"
IO.puts "Conditions.match_against_existing_variable(2)"
IO.puts Conditions.match_against_existing_variable(2)
IO.puts "--------"
IO.puts "Conditions.clause_with_guards({1, 2, 3})"
IO.puts Conditions.clause_with_guards({1, 2, 3})
IO.puts "--------"
IO.puts "Conditions.clause_with_guards({1, -1, 3})"
IO.puts Conditions.clause_with_guards({1, -1, 3})
IO.puts "--------"
IO.puts "Conditions.clause_with_guards({4, 5, 6})"
IO.puts Conditions.clause_with_guards({4, 5, 6})
IO.puts "--------"

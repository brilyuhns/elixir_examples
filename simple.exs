IO.puts "Hello world from Elixir"

def case_test1(list) do 
  case list do
    {4, 5, 6} ->
      "This clause won't match"
    {1, x, 3} ->
      "This clause will match and bind x to 2 in this clause"
    _ ->
      "This clause would match any value"
  end
end

case_test1({1, 2, 3})
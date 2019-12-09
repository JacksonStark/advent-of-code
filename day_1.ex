defmodule M do

  def hello do
    name = IO.gets "What is your name? " |> String.trim
    IO.puts "Hello #{name}"
  end


  def data_stuff do
    age = 18

    if age >= 18 do
      IO.puts "Can Vote"
    else
      IO.puts "Can't Vote"
    end
  end

end
shipMasses = [
  76663,
  111378,
  132647,
  115688,
  67473,
  85562,
  62955,
  64052,
  104961,
  128687,
  60344,
  81158,
  129984,
  106462,
  55967,
  130004,
  140810,
  71523,
  64891,
  142922,
  122783,
  123918,
  116246,
  120842,
  105578,
  122950,
  107512,
  70051,
  55347,
  54348,
  89301,
  95258,
  122323,
  136781,
  137756,
  95658,
  91017,
  79626,
  98414,
  79296,
  75226,
  143850,
  131334,
  107028,
  76591,
  75492,
  66400,
  51904,
  79262,
  68956,
  98957,
  52481,
  87955,
  118871,
  148734,
  103699,
  68681,
  55118,
  144120,
  59403,
  115012,
  147742,
  124218,
  73580,
  114949,
  65346,
  113104,
  129059,
  119068,
  72339,
  74984,
  53095,
  127452,
  133786,
  111439,
  98153,
  96312,
  139641,
  88907,
  136831,
  73574,
  67871,
  57641,
  134505,
  72116,
  134503,
  134387,
  88598,
  78687,
  61020,
  107234,
  64801,
  132668,
  60204,
  90001,
  87833,
  131148,
  61488,
  107938,
  116072
]

defmodule Day_1 do

  # RECURSIVE FUNCTION

  def deeperFuel(a, b \\ 0)

  def deeperFuel(fuel, accumulator) when fuel > 0 do
    flooredFuel = :math.floor(fuel / 3) - 2

    if (flooredFuel > 0) do
      IO.puts flooredFuel
      updatedAcc = accumulator + flooredFuel
      deeperFuel(flooredFuel, updatedAcc)
    else
      accumulator
    end
  end

  def calculateTotalFuel(masses) do
    totalFuelAmounts = Stream.map(masses, fn(x) -> deeperFuel(x) end)
    Enum.reduce(totalFuelAmounts, fn(a,c) -> a + c end)
  end
end



IO.puts "TOTAL FUEL: #{Day_1.calculateTotalFuel(shipMasses)}"

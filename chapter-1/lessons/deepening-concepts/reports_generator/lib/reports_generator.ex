defmodule ReportsGenerator do
  alias ReportsGenerator.Parser

  def build(filename) do
    filename
    |> Parser.parse_file()
    |> Enum.reduce(report_acc,fn [id, _food_name, price], report ->
      Map.put(report, id, report[id] + price)
    end)
  end

  def report_acc, do: Enum.into(1..30, %{}, &{"#{&1}", 0})
end

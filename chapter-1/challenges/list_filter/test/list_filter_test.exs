defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the total quantity of odd numbers from a generic list" do

      list = [1, 2, 3, 4, 5, "eu", :atm, "laranja"]

      response = ListFilter.call(list)

      expected_reaponse = 3

      assert response == expected_reaponse
    end
  end
end

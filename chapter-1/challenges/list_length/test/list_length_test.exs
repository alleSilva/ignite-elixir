defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the list length" do

      list = [1, 2, 3, 4, 5]

      response = ListLength.call(list)

      expected_reaponse = 5

      assert response == expected_reaponse
    end
  end
end

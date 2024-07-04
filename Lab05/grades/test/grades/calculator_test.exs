defmodule Grades.CalculatorTest do
  use ExUnit.Case
  alias Grades.Calculator

  defmodule Calculator do

    def percentage_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
      85
    end
    def letter_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
      "A"
    end
    def numeric_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
      9
    end
  end

  describe "percentage_grade/1" do
    test "sample" do
      assert 85 ==
               Calculator.percentage_grade(%{
                 homework: [0.8],
                 labs: [1, 1, 1],
                 midterm: 0.70,
                 final: 0.9
               })
    end

    test "letter_gradeisA" do
      assert "A" == Calculator.letter_grade(%{
        homework: [0.8],
        labs: [1, 1, 1],
        midterm: 0.70,
        final: 0.9
      })
    end

    test "numeric_gradeis85" do
      assert 9 == Calculator.numeric_grade(%{
        homework: [0.8],
        labs: [1, 1, 1],
        midterm: 0.70,
        final: 0.9
      })
    end

  end




end

defmodule Grades.CalculatorTest do
  use ExUnit.Case
  alias Grades.Calculator

  describe "percentage_grade/1" do
    test "tc1p" do
      assert 100 ==
               Calculator.percentage_grade(%{
                 homework: [1],
                 labs: [1, 1, 1],
                 midterm: 1.0,
                 final: 1.0
               })
    end
    test "tc2p" do
      assert 0 ==
               Calculator.percentage_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0,
                 final: 0
               })
    end
  end
  describe "letter_grade/2" do
    test "tc1l" do
      assert "A+" ==
               Calculator.letter_grade(%{
                 homework: [1],
                 labs: [1, 1, 1],
                 midterm: 1.0,
                 final: 1.0
               })
    end
    test "tc2l" do
      assert "EIN" ==
               Calculator.letter_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0,
                 final: 0
               })
    end
    test "tc3l" do
      assert "A" ==
               Calculator.letter_grade(%{
                 homework: [0.85],
                 labs: [0.85, 0.85, 0.85],
                 midterm: 0.85,
                 final: 0.85
               })
    end
    test "tc4l" do
      assert "A-" ==
               Calculator.letter_grade(%{
                 homework: [0.8],
                 labs: [0.8,0.8,0.8],
                 midterm: 0.8,
                 final: 0.8
               })
    end
    test "tc5l" do
      assert "B+" ==
               Calculator.letter_grade(%{
                 homework: [0.75],
                 labs: [0.75,0.75,0.75],
                 midterm: 0.75,
                 final: 0.75
               })
    end
    test "tc6l" do
      assert "B" ==
               Calculator.letter_grade(%{
                 homework: [0.7],
                 labs: [0.7, 0.7, 0.7],
                 midterm: 0.7,
                 final: 0.7
               })
    end
    test "tc7l" do
      assert "C+" ==
               Calculator.letter_grade(%{
                 homework: [0.65],
                 labs: [0.65, 0.65, 0.65],
                 midterm: 0.65,
                 final: 0.65
               })
    end
    test "tc8l" do
      assert "C" ==
               Calculator.letter_grade(%{
                 homework: [0.60],
                 labs: [0.60, 0.60, 0.60],
                 midterm: 0.60,
                 final: 0.60
               })
    end
    test "tc9l" do
      assert "D+" ==
               Calculator.letter_grade(%{
                 homework: [0.55],
                 labs: [0.55, 0.55, 0.55],
                 midterm: 0.55,
                 final: 0.55
               })
    end
    test "tc10l" do
      assert "D" ==
               Calculator.letter_grade(%{
                 homework: [0.5],
                 labs: [0.5, 0.5, 0.5],
                 midterm: 0.5,
                 final: 0.5
               })
    end
    test "tc11l" do
      assert "E" ==
               Calculator.letter_grade(%{
                 homework: [0.40],
                 labs: [0.40, 0.4, 0.4],
                 midterm: 0.40,
                 final: 0.40
               })
    end
    test "tc12l" do
      assert "F" ==
               Calculator.letter_grade(%{
                 homework: [0.4],
                 labs: [0.30, 0.30, 0.30],
                 midterm: 0.4,
                 final: 0.4
               })
    end
  end
  describe "numeric_grade/3" do
    test "tc1l" do
      assert 10 ==
               Calculator.numeric_grade(%{
                 homework: [1],
                 labs: [1, 1, 1],
                 midterm: 1.0,
                 final: 1.0
               })
    end
    test "tc2l" do
      assert 0 ==
               Calculator.numeric_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0,
                 final: 0
               })
    end
    test "tc3l" do
      assert 9 ==
               Calculator.numeric_grade(%{
                 homework: [0.85],
                 labs: [0.85, 0.85, 0.85],
                 midterm: 0.85,
                 final: 0.85
               })
    end
    test "tc4l" do
      assert 8 ==
               Calculator.numeric_grade(%{
                 homework: [0.8],
                 labs: [0.8,0.8,0.8],
                 midterm: 0.8,
                 final: 0.8
               })
    end
    test "tc5l" do
      assert 7 ==
               Calculator.numeric_grade(%{
                 homework: [0.75],
                 labs: [0.75,0.75,0.75],
                 midterm: 0.75,
                 final: 0.75
               })
    end
    test "tc6l" do
      assert 6 ==
               Calculator.numeric_grade(%{
                 homework: [0.7],
                 labs: [0.7, 0.7, 0.7],
                 midterm: 0.7,
                 final: 0.7
               })
    end
    test "tc7l" do
      assert 5 ==
               Calculator.numeric_grade(%{
                 homework: [0.65],
                 labs: [0.65, 0.65, 0.65],
                 midterm: 0.65,
                 final: 0.65
               })
    end
    test "tc8l" do
      assert 4 ==
               Calculator.numeric_grade(%{
                 homework: [0.60],
                 labs: [0.60, 0.60, 0.60],
                 midterm: 0.60,
                 final: 0.60
               })
    end
    test "tc9l" do
      assert 3 ==
               Calculator.numeric_grade(%{
                 homework: [0.55],
                 labs: [0.55, 0.55, 0.55],
                 midterm: 0.55,
                 final: 0.55
               })
    end
    test "tc10l" do
      assert 2 ==
               Calculator.numeric_grade(%{
                 homework: [0.5],
                 labs: [0.5, 0.5, 0.5],
                 midterm: 0.5,
                 final: 0.5
               })
    end
    test "tc11l" do
      assert 1 ==
               Calculator.numeric_grade(%{
                 homework: [0.40],
                 labs: [0.40, 0.4, 0.4],
                 midterm: 0.40,
                 final: 0.40
               })
    end
    test "tc12l" do
      assert 0 ==
               Calculator.numeric_grade(%{
                 homework: [0.4],
                 labs: [0.30, 0.30, 0.30],
                 midterm: 0.4,
                 final: 0.4
               })
    end
  end
end

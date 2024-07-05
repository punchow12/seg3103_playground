defmodule Grades.Calculator do
  def percentage_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    avg_homework = Helper.avg(homework)


    avg_labs = Helper.avg(labs)


    mark = 0.2 * avg_labs + 0.3 * avg_homework + 0.2 * midterm + 0.3 * final
    round(mark * 100)
  end

  def letter_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    avg_homework = Helper.avg(homework)

    avg_labs = Helper.avg(labs)

    avg_exams = Helper.avg_exams(midterm, final)

    num_labs = Helper.num_labs(labs)


    if Helper.failed_to_participate?(avg_homework,avg_exams, num_labs) do
      "EIN"
    else
      mark = Helper.calculate_grade(avg_labs, avg_homework, midterm, final)

      cond do
        mark > 0.895 -> "A+"
        mark > 0.845 -> "A"
        mark > 0.795 -> "A-"
        mark > 0.745 -> "B+"
        mark > 0.695 -> "B"
        mark > 0.645 -> "C+"
        mark > 0.595 -> "C"
        mark > 0.545 -> "D+"
        mark > 0.495 -> "D"
        mark > 0.395 -> "E"
        :else -> "F"
      end
    end
  end

  def numeric_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    avg_homework = Helper.avg(homework)


    avg_labs = Helper.avg(labs)

    # 2.4
    avg_exams = Helper.avg_exams(midterm, final)

    num_labs = Helper.num_labs(labs)


    if Helper.failed_to_participate?(avg_homework,avg_exams,num_labs) do
      0
    else
      mark = Helper.calculate_grade(avg_labs, avg_homework, midterm, final)

      cond do
        mark > 0.895 -> 10
        mark > 0.845 -> 9
        mark > 0.795 -> 8
        mark > 0.745 -> 7
        mark > 0.695 -> 6
        mark > 0.645 -> 5
        mark > 0.595 -> 4
        mark > 0.545 -> 3
        mark > 0.495 -> 2
        mark > 0.395 -> 1
        :else -> 0
      end
    end
  end
end

defmodule Helper do
  def avg([]), do: 0
  def avg(list), do: Enum.sum(list) / Enum.count(list)
  def failed_to_participate?(avg_homework, avg_exams, num_labs) do
    avg_homework < 0.4 || avg_exams < 0.4 || num_labs < 3
  end
  def calculate_grade(avg_labs, avg_homework, midterm, final) do
    0.2 * avg_labs + 0.3 * avg_homework + 0.2 * midterm + 0.3 * final
  end
  # 2.4 2 additional helper functions to reduce redundancy
  def avg_exams(midterm, final) do
    (midterm + final) / 2
  end
  def num_labs(labs) do
    labs
    |> Enum.reject(fn mark -> mark < 0.25 end)
    |> Enum.count()
  end

end

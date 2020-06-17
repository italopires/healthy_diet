class MealKind < EnumerateIt::Base
  associate_values :lunch, :dinner, :supper, :snack

  sort_by :translation
end

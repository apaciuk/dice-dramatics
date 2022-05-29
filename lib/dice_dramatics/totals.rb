# frozen_string_literal: true

module DiceDramatics
  class Totals

    def total_dice(number_of_sides, number_of_dice = 1, _opts = {})
      total = 0
      number_of_dice.times do
        total += rand(number_of_sides) + 1
      end

      total
    end
  end
end

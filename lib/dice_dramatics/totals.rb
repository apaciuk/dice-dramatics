# frozen_string_literal: true

module DiceDramatics
  class Totals
    def total_dice(number_of_sides, _number_of_dice = 1, _opts = {})
      result = rand(number_of_sides) + 1
    end
  end
end

# frozen_string_literal: true

require_relative "dice_dramatics/version"

module DiceDramatics
  class Error < StandardError; end

  def total_dice(number_of_sides, _number_of_dice = 1, _opts = {})
    total = rand(number_of_sides) + 1
  end
end

# frozen_string_literal: true

module DiceDramatics
  class Totals
    attr_accessor :verbose, :bonus
    def self.total_dice(number_of_sides, number_of_dice = 1, opts = {})
      total = 0
      number_of_dice.times do
        total += rand(number_of_sides) + 1
      end
      puts "Rolled #{number_of_dice} #{number_of_sides}-sided dice: #{total}" if opts[:verbose]
      total += opts[:bonus] if opts[:bonus].is_a?(Integer)
      total
    end
  end
end

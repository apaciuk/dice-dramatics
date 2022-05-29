# frozen_string_literal: true

RSpec.describe DiceDramatics::Totals do
  it "has a version number" do
    expect(DiceDramatics::VERSION).not_to be nil
  end

  describe "class methods" do
    describe "total_dice method" do
      context "with no options" do
        it "calculates the dice total correctly for a single dice" do
          400.times do
            result = DiceDramatics::Totals.total_dice(6)
            expect(result).to be_between(1, 6)
          end
        end
        it "calculates the dice total correctly for multiple dice" do
          400.times do
            result = DiceDramatics::Totals.total_dice(6, 3)
            expect(result).to be_between(3, 18)
          end
        end
      end
      context "with options" do
        it "calculates with a positive bonus correctly" do
          400.times do
            result = DiceDramatics::Totals.total_dice(6, 3, { bonus: 2 })
            expect(result).to be_between(5, 20)
          end
        end
        it "calculates with a zero bonus correctlyy" do
          400.times do
            result = DiceDramatics::Totals.total_dice(6, 3, { bonus: 0 })
            expect(result).to be_between(3, 18)
          end
        end
        it "calculates with a negative penalty correctly" do
          400.times do |i|
            result = DiceDramatics::Totals.total_dice(6, 3, { penalty: -i })
            expect(result).to be_between(1, 12)
          end
        end
      end
    end
  end
end

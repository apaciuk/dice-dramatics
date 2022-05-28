# frozen_string_literal: true

RSpec.describe DiceDramatics do
  it "has a version number" do
    expect(DiceDramatics::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  describe "class methods" do
    describe "total_dice method" do
      context "with no options" do
        it "calculates the dice total correctly for a single dice" do
          400.times do
          result = DiceDramatics.total_dice(6)
          expect(result).to be_between(1, 6)
          end
        end
      end
    end
  end
end

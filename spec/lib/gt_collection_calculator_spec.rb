require 'spec_helper'

RSpec.describe GtCollectionCalculator do
  let(:c) { GtCollectionCalculator }

  describe ".request2credit" do
    it "returns correctly" do
      expect(c.request2credit(1000)).to eq 910
      expect(c.request2credit(5000)).to eq 4970
      expect(c.request2credit(10000)).to eq 10045
      expect(c.request2credit(200000)).to eq 201895
      expect(c.request2credit(2000000)).to eq 2001895
    end
  end

  describe ".credit2request" do
    it "returns correctly" do
      expect(c.request2credit(c.credit2request(1000)).round).to eq 1000
      expect(c.request2credit(c.credit2request(5000)).round).to eq 5000
      expect(c.request2credit(c.credit2request(10000)).round).to eq 10000
      expect(c.request2credit(c.credit2request(20000)).round).to eq 20000
      expect(c.request2credit(c.credit2request(200000)).round).to eq 200000
      expect(c.request2credit(c.credit2request(2000000)).round).to eq 2000000
    end
  end
end

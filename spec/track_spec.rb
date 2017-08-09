require 'spec_helper'
require './track'

RSpec.describe Track do
  context "with gso" do
    
    it "valid tracking no" do
      tracking_no = "77085071017342912945"
      expect(Track.link(tracking_no,Gso)).to eq("https://www.gso.com/tracking/77085071017342912945")
    end

    it "valid tracking no with spaces" do
      tracking_no = "  77085071017342912945   "
      expect(Track.link(tracking_no,Gso)).to eq("https://www.gso.com/tracking/77085071017342912945")
    end

    it "invalid tracking no" do
      tracking_no = "77085071017342912945" << "123"
      expect(Track.link(tracking_no,Gso)).to be_nil            
    end

  end
end

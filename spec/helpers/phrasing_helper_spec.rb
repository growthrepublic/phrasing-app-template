require 'spec_helper'

describe PhrasingHelper, :type => :helper do
  describe "#can_edit_phrases?" do
    context "user logged as admin" do
      before { session[:admin] = true }

      it "returns true" do
        expect(helper.can_edit_phrases?).to be true
      end
    end

    context "user not logged as admin" do
      it "returns false" do
        expect(helper.can_edit_phrases?).to be false
      end
    end
  end
end

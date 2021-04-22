require_relative '../lib/exo01.rb'

describe "the dark trader function" do
    it "should return an answer" do
        expect(scrapping).not_to be_nil
    end
    it "should be an Hash" do
        expect(scrapping).to be_a(Hash)
    end

end
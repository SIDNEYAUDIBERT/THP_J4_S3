require_relative '../lib/exo01.rb'

describe "the dark trader function" do
    it "should return an answer" do
        expect(scrapper).not_to be_nil
        expect(scrapper).to be_a(Nokogiri::HTML::Document)
    end
end

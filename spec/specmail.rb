require_relative '../lib/exo02.rb'

describe "the mail_scrapper function" do
    it "should return an array" do
        expect(mail_scrapper(hash_final)).be eq("VILLERS EN ARTHIES"=>"mairie.villers@free.fr")
    end

end
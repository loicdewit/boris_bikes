require 'bike'

describe Bike do
    it 'checks whether the bike is working' do
        expect(subject.working?).to eq true
    end
    it "can be reported broken" do

      expect(subject.report_broken).to be_a(TrueClass || FalseClass)
    end
    it "has a status" do
      expect(subject.status).to be_a(TrueClass || FalseClass)
      

    end
end

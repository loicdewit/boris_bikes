require 'bike'

describe Bike do
    it 'checks whether the bike is working' do
        expect(Bike.working?).to eq true
    end
end

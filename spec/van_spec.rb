require_relative '../lib/van.rb'

describe Van do

 let(:van) {Van.new(:capacity => 10)}
 let(:bike) { Bike.new }

 
 it 'the van should be empty at first' do
   expect(van.bike_count).to eq 0
 end

 it 'should be able to accept a bike' do
    van = Van.new
    bike = Bike.new

    expect(van.bike_count).to eq 0

    van.load(bike)

    expect(van.bike_count).to eq 1
  end

end
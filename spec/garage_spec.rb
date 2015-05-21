require_relative '../lib/garage.rb'

describe Garage do

 let(:garage) {Garage.new(:capacity => 20)}
 let(:bike) { Bike.new }

def load_garage(garage)
   20.times { garage.load(Bike.new) }
  end
 
 it 'the garage should be empty at first' do
   expect(garage.bike_count).to eq 0
 end

 it 'garage should be able to accept a bike' do
    garage = Van.new
    bike = Bike.new

    expect(garage.bike_count).to eq 0

    garage.load(bike)

    expect(garage.bike_count).to eq 1
  end

  it 'garage should release a bike' do 
      garage.load(bike)
      garage.release(bike)
      expect(garage.bike_count).to eq 0
  end

  it 'should know when its full' do 
    expect(garage.full?).not_to be true
    load_garage garage
    expect(garage.full?).to be true
  end

  it "should not accept a bike if it's full" do
     load_garage garage
     expect { garage.load(bike) }.to raise_error RuntimeError
  end
end
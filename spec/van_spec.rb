require_relative '../lib/van.rb'

describe Van do

 let(:van) {Van.new(:capacity => 10)}
 let(:bike) { Bike.new }

def load_van(van)
   10.times { van.load(Bike.new) }
  end
 
 it 'the van should be empty at first' do
   expect(van.bike_count).to eq 0
 end

 it 'van should be able to accept a bike' do
    van = Van.new
    bike = Bike.new

    expect(van.bike_count).to eq 0

    van.load(bike)

    expect(van.bike_count).to eq 1
  end

  it 'van should release a bike' do 
      van.load(bike)
      van.release(bike)
      expect(van.bike_count).to eq 0
  end

  it 'should know when its full' do 
    expect(van.full?).not_to be true
    load_van van
    expect(van.full?).to be true
  end

  it "should not accept a bike if it's full" do
     load_van van
     expect { van.load(bike) }.to raise_error RuntimeError
  end
end
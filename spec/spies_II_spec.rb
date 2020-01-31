class Car
  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage

  def initialize
    @storage = []
  end

  def add_to_collection(model)
    car = Car.new(model)
    @storage << car
  end
end

RSpec.describe Garage do
  let(:car) { instance_double(Car) }
  before do
    allow(Car).to receive(:new).and_return(car)
  end

  it 'adds a car to its storage' do
    subject.add_to_collection('test')
    expect(Car).to have_received(:new).with('test')
    expect(subject.storage.length).to eq(1)
    expect(subject.storage.first).to eql(car)
  end
end
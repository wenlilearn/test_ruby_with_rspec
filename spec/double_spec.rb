# Test one of the coupled parts by faking other parts
RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # First method: give a hash as second parameter of double
    # stuntman = double("Mr. Danger", { fall_off_ladder: 'Ouch', light_on_fire: true })

    # Second method: 
    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')

    # Third method:
    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages({ fall_off_ladder: "Ouch", light_on_fire: true })

    expect(stuntman.fall_off_ladder).to eq("Ouch")
    expect(stuntman.light_on_fire).to eq(true)
  end
end
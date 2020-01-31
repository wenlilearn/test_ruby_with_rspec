class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "Act"
  end

  def fall_off_ladder
    "Call agent!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor
  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
    end
  end
end

# actor = Actor.new("Blah")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", { ready?: true, act: "Act", fall_off_ladder: "Fall off ladder", light_on_fire: true }) }
  subject { described_class.new(stuntman) }

  context "#start_shooting" do
    it 'expects an actor to do 3 actions' do
      # expect(stuntman).to receive(:ready?)
      # expect(stuntman).to receive(:act)
      # expect(stuntman).to receive(:fall_off_ladder)
      # expect(stuntman).to receive(:light_on_fire)

      # .once, .twice, .exactly(#).times
      # .at_most/least(#).times
      expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:fall_off_ladder).at_least(1).time
      expect(stuntman).to receive(:light_on_fire).at_most(1).time

      subject.start_shooting
    end
  end
end
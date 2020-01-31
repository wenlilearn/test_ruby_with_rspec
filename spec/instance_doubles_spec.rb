class Person
  def a
    sleep(3)
    "hello"
  end
end

RSpec.describe Person do
  context "regular double" do
    it "can define any method" do
      person = double(a: "hello", b: 20)
      expect(person.a).to eq("hello")
      # NOT existing method!
      expect(person.b).to eq(20)
    end
  end

  context "instance double" do
    it "can only implement methods that are defined on the class" do
      # person = instance_double(Person, { a: "hello", b: 1 })
      person = instance_double(Person)
      allow(person).to receive(:a).and_return("hello")

      # Argument doesn't match
      # allow(person).to receive(:a).with(1).and_return("hello")

      # Method doesn't exist
      # allow(person).to receive(:b).and_return("hello")
      
      expect(person.a).to eq("hello")
      # NOT existing method!
      # expect(person.b).to eq(1)
    end
  end
end
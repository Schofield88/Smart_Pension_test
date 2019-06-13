require './lib/processor'

describe Processor do

  let (:processor) { Processor.new }
  let (:data) {
    [
      {url: "/about", ip: "451.106.204.921"},
      {url: "/about/2", ip: "382.335.626.855"},
      {url: "/about/2", ip: "316.433.849.805"}
    ]
  }

  context "#total_views" do
    
    it "builds a counted array" do
      expect(processor.total_views(data)).to eq(["/about: 1 view(s)", "/about/2: 2 view(s)"])
    end

  end
end

require './lib/processor'

describe Processor do

  let (:processor) { Processor.new }
  let (:data) {
    [
      {url: "/about", ip: "451.106.204.921"},
      {url: "/about/2", ip: "382.335.626.855"},
      {url: "/about/2", ip: "316.433.849.805"},
      {url: "/about/2", ip: "382.335.626.855"},
    ]
  }

  context "#total_views" do

    it "Has /about/2 with 3 visits" do
      expect(processor.total_views(data)[1][:url]).to eq("/about/2")
      expect(processor.total_views(data)[1][:visits]).to eq(3)
    end

  end

  context "#unique_views" do

    it "has 2 unique visits for /about/2" do
      expect(processor.unique_views(data)[1][:ips].length).to eq(2)
    end

  end
end

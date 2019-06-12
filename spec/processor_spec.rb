require './lib/processor'

describe Processor do

  let (:processor) { Processor.new }

  context "#total_views" do

    it "has a total_views method" do
      expect(processor).to respond_to :total_views 
    end
  end
end

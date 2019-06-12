require './lib/parser'

describe Parser do

  let (:parser) { Parser.new }
  let (:data) { "/home 235.313.352.950\n/help_page/1 451.106.204.921\n/index 451.106.204.921" }

  context '#process' do
    it "process method outputs an array" do
      expect(parser.process(data)).to be_an(Array)
    end

    it "method outputs an array of hashes" do
      expect(parser.process(data)[0]).to be_a(Hash)
    end
  end
end

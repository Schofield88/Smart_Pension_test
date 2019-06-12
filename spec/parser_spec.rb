require './lib/parser'

describe Parser do

  let (:parser) { Parser.new }
  let (:data) { "/home 235.313.352.950\n/help_page/1 451.106.204.921\n/index 451.106.204.921" }

  context '#process' do

    it "method returns correct url and ip from array of hashes" do
      expect(parser.process(data)[0][:url]).to eq('/home')
      expect(parser.process(data)[2][:ip]).to eq('451.106.204.921')
    end

  end
end

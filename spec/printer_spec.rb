require './lib/printer'

describe Printer do

  let (:printer) { Printer.new }

  let (:total) { [
    {:url=>"/about", :visits=>1},
    {:url=>"/help", :visits=>6},
    {:url=>"/about/2", :visits=>3}
    ]
  }

  let (:unique) { [
    {:url=>"/about", :ips=>["451.106.204.921"]},
    {:url=>"/about/2", :ips=>["382.335.626.855", "316.433.849.805"]}
    ]
  }

  context "#render" do

    it "sorts and renders the data" do
      expect{ printer.render(total: total, unique: unique) }.to output("Pages sorted by total visits:\n/help: 6 visit(s)\n/about/2: 3 visit(s)\n/about: 1 visit(s)\n\nPages sorted by unique visits:\n/about/2: 2 visit(s)\n/about: 1 visit(s)\n").to_stdout
    end

  end

end

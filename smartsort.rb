require "./lib/parser"
require "./lib/processor"
require "./lib/printer"

def check_file
  if ARGV.first.nil?
    puts "Please supply a file to smartsort."
    exit
  end

  if !File.exists?(ARGV.first)
    puts "#{ARGV.first} does not exist. File must be in the same directory as smartsort.rb. Is the file name correctly typed?"
    exit
  end
end

check_file

log = File.read(ARGV.first)
parser = Parser.new
processor = Processor.new
printer = Printer.new

data = parser.process(log)
total = processor.total_views(data)
unique = processor.unique_views(data)
printer.render(total: total, unique: unique)

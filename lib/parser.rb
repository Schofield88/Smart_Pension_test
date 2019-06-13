class Parser

  def process(data)
    processed = []
    split_log = data.split("\n")
    split_log.each { |element|
      split_element = element.split(" ")
      hash = { url: split_element[0], ip: split_element[1] }
      processed << hash
    }
    processed
  end

end

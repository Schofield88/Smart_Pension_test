class Printer

  def render(total:, unique:)
    highest_totals = sort_total(total)
    highest_uniques = sort_unique(unique)
    puts "Pages sorted by total visits:"
    highest_totals.each { |element|
      puts "#{element[:url]}: #{element[
      :visits]} visit(s)"
    }
    puts ""
    puts "Pages sorted by unique visits:\n"
    highest_uniques.each { |element|
      puts "#{element[:url]}: #{element[:ips].length} visit(s)"
    }
  end

end

private

def sort_total(totals)
  highest = totals.sort_by { |hash| hash[:visits] }
  highest.reverse
end

def sort_unique(uniques)
  most_uniques = uniques.sort_by { |hash| hash[:ips].length }
  most_uniques.reverse
end

class Processor

  def total_views(data)
    urls = []
    data.each { |hash| urls << hash[:url] }
    total = urls.uniq
    total.map { |url|
      "#{url}: #{urls.count(url)} view(s)"
    }
  end

end

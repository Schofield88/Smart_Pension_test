class Processor

  def total_views(data)
    urls = []
    data.each { |hash| urls << hash[:url] }
    total = urls.uniq
    total.map { |url|
      { url: url, visits: urls.count(url) }
    }
  end

end

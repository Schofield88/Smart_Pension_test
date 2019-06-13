class Processor

  def total_views(data)
    urls = []
    data.each { |hash| urls << hash[:url] }
    total = urls.uniq
    total.map { |url|
      { url: url, visits: urls.count(url) }
    }
  end

  def unique_views(data)
    urls = []
    data.each { |hash| urls << hash[:url] }
    uniques = urls.uniq
    p uniques.map! { |url|
      { url: url, ips: [] }
    }
    data.each { |entry|
      uniques.each { |url|
        if entry[:url] == url[:url]
          url[:ips] << entry[:ip]
        end
      }
    }
    p uniques.map! { |hash|
      { url: hash[:url], ips: hash[:ips].uniq }
    }
  end



  def urls(data)
    urls = []
    data.each { |hash| urls << hash[:url] }
    urls.uniq!
  end

end

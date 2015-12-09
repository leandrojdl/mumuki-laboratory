SitemapGenerator::Sitemap.default_host = "http://mumuki.io"
SitemapGenerator::Sitemap.sitemaps_path = "sitemaps/"

SitemapGenerator::Sitemap.create do
  add '/', changefreq: 'daily', priority: 0.9
  add '/categories', changefreq: 'daily', priority: 0.8

  add '/exercises', changefreq: 'daily', priority: 0.6
  add '/guides', changefreq: 'daily', priority: 0.7
  add '/users', changefreq: 'daily', priority: 0.1

    Exercise.at_locale(locale).each do |e|
      add "/exercises/#{e.friendly}", changefreq: 'daily', priority: 0.55
      add "/exercises/#{e.id}", changefreq: 'daily', priority: 0.1

    end

    Guide.at_locale(locale).each do |g|
      add "/guides/#{g.friendly}", changefreq: 'daily', priority: 0.55
      add "/guides/#{g.id}", changefreq: 'daily', priority: 0.1
    end

  User.all.pluck(:id).each do |id|
    add "/users/#{id}", changefreq: 'daily', priority: 0.2
  end
end



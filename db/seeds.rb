
puts "Deleting all articles..."
Article.delete_all

puts "Creating articles..."
(1..100).each do | i|
  Article.create title: "title #{i}", content: "content #{i}", trendiness: rand(100)/100.0,  price: rand(100)/100.0, published_on: rand(100).days.ago.utc
end


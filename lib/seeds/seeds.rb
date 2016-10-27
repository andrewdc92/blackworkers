

require 'csv'

csv_text = File.read('instagram_posts.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Post.create!(row.to_hash)
end



require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'insta_posts_final.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  Post.create!(row.to_hash)
end

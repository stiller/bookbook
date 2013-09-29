namespace :books do
  desc "Fetch new books from Google Books"
  task :fetch => :environment do
    BookFetcher.new.get['items'].each do |book_hash|
      Book.find_or_create_from_hash(book_hash)
    end
  end
end

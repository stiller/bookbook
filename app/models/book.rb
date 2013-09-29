class Book < ActiveRecord::Base
  def self.find_or_create_from_hash(book_hash)
    if book = find_by_google_id(book_hash['id'])
      return book
    end

    hash = {}
    hash['google_id'] = book_hash['id']
    info = book_hash['volumeInfo']
    hash['title'] = info['title']
    hash['authors'] = info['authors'].join(', ') if info['authors']
    hash['thumbnail_url'] = book_hash['volumeInfo']['imageLinks']['smallThumbnail']
    create(hash)
  end
end

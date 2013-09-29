require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "Can create book from hash." do
    book_hash = YAML::load_file(File.join(File.dirname(File.expand_path(__FILE__)),'book_hash.yml'))
    book = Book.find_or_create_from_hash(book_hash)
    assert_equal book.authors, 'Steve Holzner, Ph.D.'
    assert_equal book.title, 'Beginning Ruby on Rails'
    assert_equal book.thumbnail_url, 'http://bks9.books.google.nl/books?id=BaWayIR0CvkC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api'
  end
end

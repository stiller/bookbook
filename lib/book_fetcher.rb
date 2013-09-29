require "net/http"
require "uri"

class BookFetcher
  def initialize
    @http = ::Net::HTTP.new("www.googleapis.com", 443)
    @http.use_ssl = true
    @http.verify_mode = OpenSSL::SSL::VERIFY_PEER
  end

  def get
    response = @http.request(Net::HTTP::Get.new("/books/v1/volumes\?q\='ruby+on+rails'&maxResults=40"))
    JSON.parse response.body
  end
end

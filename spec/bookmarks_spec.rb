require 'bookmarks'
require 'pg'

describe Bookmarks do

  describe '#view_bookmarks' do
    it 'returns the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmarks.add_bookmark(url: 'http://www.makersacademy.com', title: 'makers academy')
      Bookmarks.add_bookmark(url: 'http://www.destroyallsoftware.com', title: 'destroy')
      bookmarks = Bookmarks.view_bookmarks

      bookmark.map { |b| @book = b['id'] }

      expect(bookmarks.length).to eq(2)
      expect(bookmarks.first).to be_a Bookmarks
      expect(bookmarks.first.id).to eq @book
      expect(bookmarks.first.title).to eq 'makers academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe "add_bookmark" do
    it "add a new bookmark to the database" do
      bookmarks = Bookmarks.add_bookmark(url: "www.bbc.co.uk", title: "bbc news")
      #expect(bookmarks['url']).to eq("www.bbc.co.uk")
      #expect(bookmarks['title']).to eq("bbc news")
    end


  end

end

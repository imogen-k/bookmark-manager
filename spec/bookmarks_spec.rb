require 'bookmarks'
require 'pg'

describe Bookmarks do

  describe '#view_bookmarks' do
    it 'returns the bookmarks' do
      Bookmarks.add_bookmark('http://www.makersacademy.com')
      Bookmarks.add_bookmark('http://www.destroyallsoftware.com')
      bookmarks = Bookmarks.view_bookmarks
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end

  describe "add_bookmark" do 
    it "add a new bookmark to the database" do
      Bookmarks.add_bookmark("www.bbc.co.uk")
      expect(Bookmarks.view_bookmarks).to include("www.bbc.co.uk")
    end
  end

end

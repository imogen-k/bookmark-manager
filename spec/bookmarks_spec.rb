require 'bookmarks'

describe Bookmarks do
  describe '#view_bookmarks' do
    it 'returns the bookmarks' do
      bookmarks = Bookmarks.view_bookmarks
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end
end

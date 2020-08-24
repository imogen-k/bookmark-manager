require 'bookmarks'

describe Bookmarks do
  describe '#view_bookmarks' do
    it 'returns the bookmarks' do
      bookmarks = Bookmarks.view_bookmarks
      expect(bookmarks).to include("http://www.reddit.com")
      expect(bookmarks).to include("http://www.27bslash6.com")
    end
  end
end

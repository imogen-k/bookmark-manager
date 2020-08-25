require 'bookmarks'
require 'pg'

describe Bookmarks do
  describe '#view_bookmarks' do
    it 'returns the bookmarks' do
       connection = PG.connect(dbname: 'bookmark_manager_test')

       connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
       connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")



      bookmarks = Bookmarks.view_bookmarks
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end
end

require "pg"

feature "Add new bookmark" do 
  scenario "Creating and submiting new bookmark" do 

    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.bbc.co.uk/');")
    
    visit('/bookmarks')
    click_link "Add bookmark"
    fill_in("url", with: "https://www.bbc.co.uk/")
    click_button "Submit"
    expect(page).to have_content "https://www.bbc.co.uk/"
  end
end
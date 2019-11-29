require 'pg'

feature 'Adding bookmarks' do
  scenario 'A user want to add  bookmarks' do
    visit ('/add_bookmark')
    fill_in "url", with: "www.cnn.com"
    click_button  "Submit"
    visit('/bookmarks')

    expect(page).to have_content "www.cnn.com"
  end
end

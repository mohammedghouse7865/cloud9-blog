require 'spec/rails_helper'

RSpec.feature "Creating Articles" do
  scenario "A user creates a new artile" do
    visit "/"
    
    click_link "New Article2345"
    
    fill_in "Title", with: "capy test"
    fill_in "Body", with: "My capy test first"
    
    click_button "Create Article"
    
    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path)
    
    
  end
  
end
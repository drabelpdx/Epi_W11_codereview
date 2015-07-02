require "rails_helper"

describe "add category" do
  it "adds a new category to site" do
    visit categories_path
    click_on 'Add a Category'
    fill_in 'Name', :with => 'My category'
    fill_in 'Description', :with => 'My description'
    click_on 'Create Category'
    expect(page).to have_content 'My'
  end
end

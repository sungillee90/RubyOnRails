require "application_system_test_case"

class CrudpostsTest < ApplicationSystemTestCase
  setup do
    @crudpost = crudposts(:one)
  end

  test "visiting the index" do
    visit crudposts_url
    assert_selector "h1", text: "Crudposts"
  end

  test "creating a Crudpost" do
    visit crudposts_url
    click_on "New Crudpost"

    fill_in "Description", with: @crudpost.description
    fill_in "Title", with: @crudpost.title
    click_on "Create Crudpost"

    assert_text "Crudpost was successfully created"
    click_on "Back"
  end

  test "updating a Crudpost" do
    visit crudposts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @crudpost.description
    fill_in "Title", with: @crudpost.title
    click_on "Update Crudpost"

    assert_text "Crudpost was successfully updated"
    click_on "Back"
  end

  test "destroying a Crudpost" do
    visit crudposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crudpost was successfully destroyed"
  end
end

require "application_system_test_case"

class MyFriendsTest < ApplicationSystemTestCase
  setup do
    @my_friend = my_friends(:one)
  end

  test "visiting the index" do
    visit my_friends_url
    assert_selector "h1", text: "My Friends"
  end

  test "creating a My friend" do
    visit my_friends_url
    click_on "New My Friend"

    fill_in "Age", with: @my_friend.age
    fill_in "Birthdate", with: @my_friend.birthdate
    fill_in "Fullname", with: @my_friend.fullname
    fill_in "Motto", with: @my_friend.motto
    fill_in "Salary", with: @my_friend.salary
    click_on "Create My friend"

    assert_text "My friend was successfully created"
    click_on "Back"
  end

  test "updating a My friend" do
    visit my_friends_url
    click_on "Edit", match: :first

    fill_in "Age", with: @my_friend.age
    fill_in "Birthdate", with: @my_friend.birthdate
    fill_in "Fullname", with: @my_friend.fullname
    fill_in "Motto", with: @my_friend.motto
    fill_in "Salary", with: @my_friend.salary
    click_on "Update My friend"

    assert_text "My friend was successfully updated"
    click_on "Back"
  end

  test "destroying a My friend" do
    visit my_friends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My friend was successfully destroyed"
  end
end

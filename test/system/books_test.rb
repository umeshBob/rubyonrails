require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "creating a Book" do
    visit books_url
    click_on "New Book"

    fill_in "Cat1", with: @book.cat1
    fill_in "Cat2", with: @book.cat2
    fill_in "City", with: @book.city
    fill_in "Description", with: @book.description
    fill_in "Email", with: @book.email
    fill_in "Location", with: @book.location
    fill_in "Mobile", with: @book.mobile
    fill_in "Name", with: @book.name
    fill_in "Price", with: @book.price
    fill_in "Subcat", with: @book.subcat
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "updating a Book" do
    visit books_url
    click_on "Edit", match: :first

    fill_in "Cat1", with: @book.cat1
    fill_in "Cat2", with: @book.cat2
    fill_in "City", with: @book.city
    fill_in "Description", with: @book.description
    fill_in "Email", with: @book.email
    fill_in "Location", with: @book.location
    fill_in "Mobile", with: @book.mobile
    fill_in "Name", with: @book.name
    fill_in "Price", with: @book.price
    fill_in "Subcat", with: @book.subcat
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "destroying a Book" do
    visit books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book was successfully destroyed"
  end
end

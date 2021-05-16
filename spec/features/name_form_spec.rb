feature "entering names" do
  scenario "submit names" do
    sign_in_and_play
    expect(page).to have_content "John vs. James"
  end
end
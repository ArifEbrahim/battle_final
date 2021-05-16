feature "hit points" do
  scenario "player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "James: 100hp"
  end

  scenario "player 1 hit points" do
    sign_in_and_play
    expect(page).to have_content "John: 100hp"
  end
end
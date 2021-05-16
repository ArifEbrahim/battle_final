feature "losing" do
  scenario "player 2 can lose" do
    sign_in_and_play
    19.times { attack_ok }
    expect(page).to have_content "John wins!"
  end
end



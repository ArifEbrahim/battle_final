feature "switch turns" do
  context "seeing current turn" do
    scenario "start of game" do
      sign_in_and_play
      expect(page).to have_content "John's turn"
    end
    scenario "after turn 1" do
      sign_in_and_play
      attack_ok
      expect(page).not_to have_content "John's turn"
      expect(page).to have_content "James's turn"
    end
  end
end
require "application_system_test_case"

class ChecklistsTest < ApplicationSystemTestCase
  setup do
    @checklist = checklists(:one)
  end

  test "visiting the index" do
    visit checklists_url
    assert_selector "h1", text: "Checklists"
  end

  test "should create checklist" do
    visit checklists_url
    click_on "New checklist"

    fill_in "Accept invite", with: @checklist.accept_invite
    fill_in "Acceptance letter", with: @checklist.acceptance_letter
    fill_in "Apply invite", with: @checklist.apply_invite
    fill_in "Biometrics", with: @checklist.biometrics
    fill_in "Cv", with: @checklist.cv
    fill_in "Family information", with: @checklist.family_information
    fill_in "Funds", with: @checklist.funds
    fill_in "Id document", with: @checklist.id_document
    fill_in "Passport", with: @checklist.passport
    fill_in "Police cert", with: @checklist.police_cert
    click_on "Create Checklist"

    assert_text "Checklist was successfully created"
    click_on "Back"
  end

  test "should update Checklist" do
    visit checklist_url(@checklist)
    click_on "Edit this checklist", match: :first

    fill_in "Accept invite", with: @checklist.accept_invite
    fill_in "Acceptance letter", with: @checklist.acceptance_letter
    fill_in "Apply invite", with: @checklist.apply_invite
    fill_in "Biometrics", with: @checklist.biometrics
    fill_in "Cv", with: @checklist.cv
    fill_in "Family information", with: @checklist.family_information
    fill_in "Funds", with: @checklist.funds
    fill_in "Id document", with: @checklist.id_document
    fill_in "Passport", with: @checklist.passport
    fill_in "Police cert", with: @checklist.police_cert
    click_on "Update Checklist"

    assert_text "Checklist was successfully updated"
    click_on "Back"
  end

  test "should destroy Checklist" do
    visit checklist_url(@checklist)
    click_on "Destroy this checklist", match: :first

    assert_text "Checklist was successfully destroyed"
  end
end

require "application_system_test_case"

class ProjectPhasesTest < ApplicationSystemTestCase
  setup do
    @project_phase = project_phases(:one)
  end

  test "visiting the index" do
    visit project_phases_url
    assert_selector "h1", text: "Project Phases"
  end

  test "creating a Project phase" do
    visit project_phases_url
    click_on "New Project Phase"

    fill_in "Job title", with: @project_phase.job_title
    fill_in "Price", with: @project_phase.price
    fill_in "Project", with: @project_phase.project_id
    fill_in "Timeframe", with: @project_phase.timeframe
    click_on "Create Project phase"

    assert_text "Project phase was successfully created"
    click_on "Back"
  end

  test "updating a Project phase" do
    visit project_phases_url
    click_on "Edit", match: :first

    fill_in "Job title", with: @project_phase.job_title
    fill_in "Price", with: @project_phase.price
    fill_in "Project", with: @project_phase.project_id
    fill_in "Timeframe", with: @project_phase.timeframe
    click_on "Update Project phase"

    assert_text "Project phase was successfully updated"
    click_on "Back"
  end

  test "destroying a Project phase" do
    visit project_phases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project phase was successfully destroyed"
  end
end

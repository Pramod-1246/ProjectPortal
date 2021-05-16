require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    check "On progress" if @project.on_progress
    fill_in "Porject description", with: @project.porject_description
    fill_in "Project name", with: @project.project_name
    fill_in "Starts on", with: @project.starts_on
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    check "On progress" if @project.on_progress
    fill_in "Porject description", with: @project.porject_description
    fill_in "Project name", with: @project.project_name
    fill_in "Starts on", with: @project.starts_on
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end

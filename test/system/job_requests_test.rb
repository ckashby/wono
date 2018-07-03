require "application_system_test_case"

class JobRequestsTest < ApplicationSystemTestCase
  setup do
    @job_request = job_requests(:one)
  end

  test "visiting the index" do
    visit job_requests_url
    assert_selector "h1", text: "Job Requests"
  end

  test "creating a Job request" do
    visit job_requests_url
    click_on "New Job Request"

    fill_in "Day", with: @job_request.day
    fill_in "Desc", with: @job_request.desc
    fill_in "Time", with: @job_request.time
    fill_in "Title", with: @job_request.title
    fill_in "User", with: @job_request.user_id
    click_on "Create Job request"

    assert_text "Job request was successfully created"
    click_on "Back"
  end

  test "updating a Job request" do
    visit job_requests_url
    click_on "Edit", match: :first

    fill_in "Day", with: @job_request.day
    fill_in "Desc", with: @job_request.desc
    fill_in "Time", with: @job_request.time
    fill_in "Title", with: @job_request.title
    fill_in "User", with: @job_request.user_id
    click_on "Update Job request"

    assert_text "Job request was successfully updated"
    click_on "Back"
  end

  test "destroying a Job request" do
    visit job_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job request was successfully destroyed"
  end
end

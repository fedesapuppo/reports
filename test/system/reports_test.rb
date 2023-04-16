require 'application_system_test_case'

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = reports(:one)
  end

  test 'visiting the index' do
    visit reports_url
    assert_selector 'h1', text: 'Reports'
  end

  test 'should create report' do
    visit reports_url
    click_on 'New report'

    fill_in 'Action taken', with: @report.action_taken
    fill_in 'Date of incident', with: @report.date_of_incident
    fill_in 'Details of incident', with: @report.details_of_incident
    fill_in 'Further information', with: @report.further_information
    fill_in 'Incident status', with: @report.incident_status
    fill_in 'Initiator of incident', with: @report.initiator_of_incident
    fill_in 'Location of incident', with: @report.location_of_incident
    fill_in 'Signed by', with: @report.signed_by
    fill_in 'Time of incident', with: @report.time_of_incident
    fill_in 'Type of incident', with: @report.type_of_incident
    fill_in 'Unit identity', with: @report.unit_identity
    click_on 'Create Report'

    assert_text 'Report was successfully created'
    click_on 'Back'
  end

  test 'should update Report' do
    visit report_url(@report)
    click_on 'Edit this report', match: :first

    fill_in 'Action taken', with: @report.action_taken
    fill_in 'Date of incident', with: @report.date_of_incident
    fill_in 'Details of incident', with: @report.details_of_incident
    fill_in 'Further information', with: @report.further_information
    fill_in 'Incident status', with: @report.incident_status
    fill_in 'Initiator of incident', with: @report.initiator_of_incident
    fill_in 'Location of incident', with: @report.location_of_incident
    fill_in 'Signed by', with: @report.signed_by
    fill_in 'Time of incident', with: @report.time_of_incident
    fill_in 'Type of incident', with: @report.type_of_incident
    fill_in 'Unit identity', with: @report.unit_identity
    click_on 'Update Report'

    assert_text 'Report was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Report' do
    visit report_url(@report)
    click_on 'Destroy this report', match: :first

    assert_text 'Report was successfully destroyed'
  end
end

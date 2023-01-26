require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url
    assert_response :success
  end

  test "should get new" do
    get new_report_url
    assert_response :success
  end

  test "should create report" do
    assert_difference("Report.count") do
      post reports_url, params: { report: { action_taken: @report.action_taken, date_of_incident: @report.date_of_incident, details_of_incident: @report.details_of_incident, further_information: @report.further_information, incident_status: @report.incident_status, initiator_of_incident: @report.initiator_of_incident, location_of_incident: @report.location_of_incident, signed_by: @report.signed_by, time_of_incident: @report.time_of_incident, type_of_incident: @report.type_of_incident, unit_identity: @report.unit_identity } }
    end

    assert_redirected_to report_url(Report.last)
  end

  test "should show report" do
    get report_url(@report)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_url(@report)
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report), params: { report: { action_taken: @report.action_taken, date_of_incident: @report.date_of_incident, details_of_incident: @report.details_of_incident, further_information: @report.further_information, incident_status: @report.incident_status, initiator_of_incident: @report.initiator_of_incident, location_of_incident: @report.location_of_incident, signed_by: @report.signed_by, time_of_incident: @report.time_of_incident, type_of_incident: @report.type_of_incident, unit_identity: @report.unit_identity } }
    assert_redirected_to report_url(@report)
  end

  test "should destroy report" do
    assert_difference("Report.count", -1) do
      delete report_url(@report)
    end

    assert_redirected_to reports_url
  end
end

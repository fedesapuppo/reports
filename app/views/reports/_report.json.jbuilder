json.extract! report, :id, :date_of_incident, :time_of_incident, :type_of_incident, :location_of_incident,
              :initiator_of_incident, :unit_identity, :details_of_incident, :action_taken, :incident_status, :further_information, :signed_by, :created_at, :updated_at
json.url report_url(report, format: :json)

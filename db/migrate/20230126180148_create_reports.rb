class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.date :date_of_incident
      t.time :time_of_incident
      t.text :type_of_incident
      t.text :location_of_incident
      t.text :initiator_of_incident
      t.text :unit_identity
      t.text :details_of_incident
      t.text :action_taken
      t.text :incident_status
      t.text :further_information
      t.text :signed_by

      t.timestamps
    end
  end
end

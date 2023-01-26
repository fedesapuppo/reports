class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.date :date_of_incident
      t.time :time_of_incident
      t.string :type_of_incident
      t.string :location_of_incident
      t.string :initiator_of_incident
      t.string :unit_identity
      t.string :details_of_incident
      t.string :action_taken
      t.string :incident_status
      t.string :further_information
      t.string :signed_by

      t.timestamps
    end
  end
end

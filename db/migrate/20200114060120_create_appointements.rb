class CreateAppointements < ActiveRecord::Migration[5.0]
  def change
    create_table :appointements do |t|
      t.datetime :appointement_datetime
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end

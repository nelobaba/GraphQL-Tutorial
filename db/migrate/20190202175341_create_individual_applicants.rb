class CreateIndividualApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :individual_applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name

      t.timestamps
    end
  end
end

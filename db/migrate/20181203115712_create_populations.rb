class CreatePopulations < ActiveRecord::Migration[5.2]
  def change
    create_table :populations do |t|
      t.string :description

      t.timestamps
    end
  end
end

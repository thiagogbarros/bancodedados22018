class CreateScales < ActiveRecord::Migration[5.2]
  def change
    create_table :scales do |t|
      t.string :description

      t.timestamps
    end
  end
end

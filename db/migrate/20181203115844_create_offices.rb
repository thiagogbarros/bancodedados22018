class CreateOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :offices do |t|
      t.string :description
      t.references :power, foreign_key: true

      t.timestamps
    end
  end
end

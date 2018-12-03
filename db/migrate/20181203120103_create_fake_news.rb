class CreateFakeNews < ActiveRecord::Migration[5.2]
  def change
    create_table :fake_news do |t|
      t.string :title
      t.references :font, foreign_key: true
      t.references :scale, foreign_key: true
      t.references :population, foreign_key: true

      t.timestamps
    end
  end
end

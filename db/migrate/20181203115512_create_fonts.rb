class CreateFonts < ActiveRecord::Migration[5.2]
  def change
    create_table :fonts do |t|
      t.string :description

      t.timestamps
    end
  end
end

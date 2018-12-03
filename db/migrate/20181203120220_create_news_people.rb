class CreateNewsPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :news_people do |t|
      t.references :fake_news, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end

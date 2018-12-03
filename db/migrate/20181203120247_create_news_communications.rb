class CreateNewsCommunications < ActiveRecord::Migration[5.2]
  def change
    create_table :news_communications do |t|
      t.references :fake_news, foreign_key: true
      t.references :communication, foreign_key: true

      t.timestamps
    end
  end
end

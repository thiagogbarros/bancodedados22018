class CreateNewsStates < ActiveRecord::Migration[5.2]
  def change
    create_table :news_states do |t|
      t.references :fake_news, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end

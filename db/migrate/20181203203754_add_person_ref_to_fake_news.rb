class AddPersonRefToFakeNews < ActiveRecord::Migration[5.2]
  def change
    add_reference :fake_news, :person, foreign_key: true
  end
end

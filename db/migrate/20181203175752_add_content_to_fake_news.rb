class AddContentToFakeNews < ActiveRecord::Migration[5.2]
  def change
    add_column :fake_news, :content, :string
  end
end

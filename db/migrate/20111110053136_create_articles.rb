class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.text :headline
      t.text :body
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end

class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :body
      t.boolean :completed

      t.timestamps null: false
    end
  end
end

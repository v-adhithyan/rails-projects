class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :date
      t.text :note

      t.timestamps
    end
  end
end

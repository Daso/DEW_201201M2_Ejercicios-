class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.references :person

      t.timestamps
    end
    add_index :gifts, :person_id
  end
end

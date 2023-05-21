class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      t.integer :follower_id, null: false
      t.integer :follow_id, null: false

      t.timestamps
    end
    add_index :relationships, :follow_id
    add_index :relationships, %i[follower_id follow_id], unique: true
  end
end

class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.column :text, :string
      t.column :date_time, :date
      t.column :user_id, :user_id
      t.column :photo_id, :photo_id
    end
  end
end

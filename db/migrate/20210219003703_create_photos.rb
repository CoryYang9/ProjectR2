class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.column :date_time, :date
      t.column :file_name, :string
      t.column :user_id, :user
    end
  end
end

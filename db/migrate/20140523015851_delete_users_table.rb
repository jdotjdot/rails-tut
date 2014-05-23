class DeleteUsersTable < ActiveRecord::Migration
  def change
    drop_table :users

    create_table :users do |t|
      t.timestamps
    end

    add_column :users, :password_digest, :string
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_index :users, :email, unique: true

  end
end

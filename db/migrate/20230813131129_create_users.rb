class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.boolean :log_in_with_google
      t.string :profile_picture

      t.timestamps
    end
  end
end

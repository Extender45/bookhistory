class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :informations do |t|
      t.string :user
      t.string :email

      t.timestamps
    end
  end
end

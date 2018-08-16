class CreateUses < ActiveRecord::Migration
  def change
    create_table :uses do |t|
      t.string :username
      t.string :email
      t.timestamps
    end
  end
end

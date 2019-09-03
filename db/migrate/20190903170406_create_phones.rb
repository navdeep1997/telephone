class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :user_id
      t.bigint :number

      t.timestamps
    end
  end
end

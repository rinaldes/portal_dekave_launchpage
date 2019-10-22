class CreateSubs < ActiveRecord::Migration[6.0]
  def change
    create_table :subs do |t|
      t.string :email
      t.string :masalah
      t.timestamps
    end
  end
end
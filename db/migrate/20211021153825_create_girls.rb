class CreateGirls < ActiveRecord::Migration[6.0]
  def change
    create_table :girls do |t|
      t.string :name
      t.string :address
      t.text :content

      t.timestamps
    end
  end
end

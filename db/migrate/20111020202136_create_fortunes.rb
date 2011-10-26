class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end

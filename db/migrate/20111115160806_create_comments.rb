class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :fortune
      t.string :author
      t.string :quotation

      t.timestamps
    end
  end
end

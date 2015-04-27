class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :comment
      t.references :comment, polymorphic: true, index: true
      t.date :date
      t.timestamps
    end
  end
end


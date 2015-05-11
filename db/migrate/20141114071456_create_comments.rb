class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :comment
      t.date :date
      t.references :user, index: true
      t.references :workout, index: true
      t.timestamps
    end
  end
end


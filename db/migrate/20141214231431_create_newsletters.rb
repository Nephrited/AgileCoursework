class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.date :date
      t.string :file

      t.timestamps
    end
  end
end

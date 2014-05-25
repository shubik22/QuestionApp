class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :answer
      t.text :source
      t.string :category
      t.boolean :selected, default: false
      
      t.timestamps
    end
  end
end
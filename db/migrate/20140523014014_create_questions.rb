class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :answer
      t.integer :author_id
      t.integer :topic_id
      
      t.timestamps
    end
    
    add_index :questions, :author_id
    add_index :questions, :topic_id
  end
end
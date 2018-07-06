class CreateAnswerChoice < ActiveRecord::Migration[5.1]
  def change
    create_table :answerchoices do |t|
      t.integer :question_id, null: false 
      t.text :answer
    end
  end
end

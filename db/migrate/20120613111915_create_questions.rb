class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question_content
      t.text :answer_content
      t.bool :has_answer

      t.timestamps
    end
  end
end

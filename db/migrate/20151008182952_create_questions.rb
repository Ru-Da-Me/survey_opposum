class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.boolean :required
      t.string :question_type
      t.string :text
      t.string :description

      t.timestamps null: false
    end
  end
end

class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references :poll, null: false, foreign_key: true
      t.text :name
      t.integer :count

      t.timestamps
    end
  end
end

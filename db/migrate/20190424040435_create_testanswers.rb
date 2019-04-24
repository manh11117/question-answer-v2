class CreateTestanswers < ActiveRecord::Migration[5.2]
  def change
    create_table :testanswers do |t|
      t.text :text
      t.references :test, foreign_key: true
      t.references :question, foreign_key: true
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end

# rails g model Testanswer text:text test:references question:references answer:references

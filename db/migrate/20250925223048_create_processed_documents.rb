class CreateProcessedDocuments < ActiveRecord::Migration[8.0]
  def change
    create_table :processed_documents do |t|
      t.string :type, null: false
      t.integer :pageNum, null: false

      t.timestamps
    end
  end
end

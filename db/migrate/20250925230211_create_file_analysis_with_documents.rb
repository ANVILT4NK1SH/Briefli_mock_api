class CreateFileAnalysisWithDocuments < ActiveRecord::Migration[8.0]
  def change
    create_table :file_analysis_with_documents do |t|
      t.string :fileName, null: false
      t.string :displayName, null: false
      t.string :status, null: false
      t.string :createdAt, null: false
      t.integer :processedAt, null: false
      t.string :orgId, null: false
      t.string :clientId, null: false
      t.integer :fileSize, null: false

      t.timestamps
    end
  end
end

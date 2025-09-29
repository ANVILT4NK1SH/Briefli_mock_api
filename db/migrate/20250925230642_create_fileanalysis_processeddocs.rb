class CreateFileanalysisProcesseddocs < ActiveRecord::Migration[8.0]
  def change
    create_table :fileanalysis_processeddocs do |t|
      t.references :file_analysis_with_document, null: false, foreign_key: true
      t.references :processed_document, null: false, foreign_key: true

      t.timestamps
    end
  end
end

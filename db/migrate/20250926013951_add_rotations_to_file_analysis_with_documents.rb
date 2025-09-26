class AddRotationsToFileAnalysisWithDocuments < ActiveRecord::Migration[8.0]
  def change
    add_column :file_analysis_with_documents, :rotations, :text
  end
end

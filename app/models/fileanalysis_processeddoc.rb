class FileanalysisProcesseddoc < ApplicationRecord
  belongs_to :file_analysis_with_document
  belongs_to :processed_document
end

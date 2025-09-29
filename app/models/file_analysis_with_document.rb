class FileAnalysisWithDocument < ApplicationRecord
  has_many :FileanalysisProcesseddocs, dependent: :destroy
  has_many :ProcessedDocuments, through: :FileanalysisProcesseddocs
  accepts_nested_attributes_for :ProcessedDocuments, allow_destroy: true
  searialize :rotations, Array
end

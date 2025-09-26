class ProcessedDocument < ApplicationRecord
  self.inheritance_column = nil
  has_many :FileanalysisProcesseddocs, dependent: :destroy
  has_many :FileAnalysisWithDocuments, through: :FileanalysisProcesseddocs

  validates :type, :pageNum, presence: true
end

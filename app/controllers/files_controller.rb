class FilesController < ApplicationController
  def getAllFiles
    files = FileAnalysisWithDocument.all.includes(FileanalysisProcesseddocs: :ProcessedDocument)

    formatted_files = files.map do |file|
      {
        fileName: file.fileName,
        displayName: file.displayName,
        status: file.status,
        createdAt: file.createdAt,
        processedAt: file.processedAt,
        orgId: file.orgId,
        clientId: file.clientId,
        fileSize: file.fileSize,
        documentTypes: file.fileanalysis_processeddocs.map do |fp|
          {
            type: fp.processed_document.type
          }
        end
      }
    end
    render json: formatted_files, status: :ok
  end

  def getFile
    file = FileAnalysisWithDocument.find_by(fileName: params[:fileName], orgId: params[:orgId]).includes(FileanalysisProcesseddocs: :ProcessedDocument)

    formatted_file =
      {
        fileName: file.fileName,
        displayName: file.displayName,
        status: file.status,
        createdAt: file.createdAt,
        processedAt: file.processedAt,
        orgId: file.orgId,
        clientId: file.clientId,
        fileSize: file.fileSize,
        rotations: file.rotations,
        documentTypes: file.fileanalysis_processeddocs.map do |fp|
          {
            type: fp.processed_document.type,
            pageNum: fp.processed_document.pageNum
          }
        end
      }
    render json: formatted_file, status: :ok
  end
end

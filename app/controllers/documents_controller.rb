class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @document = Document.new
    @documents = Document.all
    respond_with(@documents)
  end

  def show
    respond_with(@document)
  end

  def new
    @document = current_user.documents.build
    respond_with(@document)
  end

  def edit
  end

  def create
    @document = current_user.documents.build(document_params)
    @document.save
    redirect_to documents_path
    flash[:notice] = "The document was uploaded successfully."
  end

  def update
    @document.update(document_params)
    respond_with(@document)
  end

  def destroy
    @document.destroy
    respond_with(@document)
  end

  private
    def set_document
      @document = Document.find(params[:id])
    end

    def document_params
      params.require(:document).permit(:file)
    end
end

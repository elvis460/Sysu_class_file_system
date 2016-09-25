class Backends::DocumentsController < BackendsController

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to backends_documents_path
    else
      render text: 'Something Error!!!'
    end
  end


  private

  def document_params
    params.require(:document).permit(:file,:info)
  end
end

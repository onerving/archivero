class DocumentsController < ApplicationController

  before_filter :check_logged_in, :only => [:edit, :index, :show, :destroy]


  def index
    @documents = Document.all.reverse
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to root_path, notice: "El documento \"#{@document.name}\" ha sido subido" 
    else
      render :new
    end
  end

  def show
    @document = Document.find(params[:id])
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    redirect_to documents_path, notice: "El documento \"#{@document.name}\" ha sido eliminado."
  end

  private

  def document_params
    params.require(:document).permit(:name, :uploader_name, :email, :description, :attachment)
  end

  def check_logged_in
    authenticate_or_request_with_http_basic("Documents") do |username, pw|
      username == "admin" && pw == "comunicacionycompromiso"
    end
  end

end

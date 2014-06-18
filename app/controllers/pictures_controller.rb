class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

  def show
    @pictures = Picture.find(params[:id].to_i)
  end

  def new

  end

  def create
    render :text => "Saving a picture. URL #{params[:url]}, Title: #{params[:title]}, Artist #{params[:artist]}"
    #the symbol ":text" can be rendered since 
    #the form fields were set as text fields 
  end
end

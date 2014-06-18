class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
    # Picture refers to the Picture table under the model
    # @picture(s) is plural since it referes to all pictures 
    # held in the DB. plus since it contains multiple items
    # it is iterated over on index.html.erb 
	end

  def show
    @picture = Picture.find(params[:id].to_i)
  end

  def new
      @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
      if @picture.save
        redirect_to pictures_url
      else
        render :new #(:new refers to new.html.erb)
      end
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end
end

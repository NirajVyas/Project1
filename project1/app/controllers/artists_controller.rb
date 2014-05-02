class ArtistsController < ApplicationController
 load_and_authorize_resource
 
  def index

    @q = Artist.search(params[:q])
    @artists = @q.result(:distinct => true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artists }
    end
  end


  def show
    @artist = Artist.find(params[:id])
      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artist }
    end
  end


  def new
    @artist = Artist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist }
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

 
  def create
    @artist = Artist.new(params[:artist])

    respond_to do |format|
      if @artist.save
        format.html { redirect_to login_path(@artist), notice: 'Artist was successfully created. Please sign in.' }
        format.json { render json: @artist, status: :created, location: @artist }
      else
        format.html { render action: "new" }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @artist = Artist.find(params[:id])

    respond_to do |format|
      if @artist.update_attributes(params[:artist])
        format.html { redirect_to @artist, notice: 'Artist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    respond_to do |format|
      format.html { redirect_to artists_url }
      format.json { head :no_content }
    end
  end


def featured

end


end



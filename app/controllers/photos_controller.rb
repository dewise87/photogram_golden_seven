class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def new_form

  end

  def create_row
    @photo = Photo.new
    @photo.caption = params[:caption]
    @photo.source = params[:source]
    @photo.save

    redirect_to("http://localhost:3000")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def update_row
    @photo = Photo.find_by({ :id => params[:id]})

    @photo.caption = params[:caption]
    @photo.source = params[:source]
    @photo.save

    render("show")
  end

  def destroy
    p = Photo.find_by({ :id => params[:id]})
    p.destroy
    p.save

    redirect_to("http://localhost:3000")
  end
end

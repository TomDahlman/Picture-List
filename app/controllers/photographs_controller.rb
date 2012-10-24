class PhotographsController < ApplicationController
  
  def new
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    redirect_to all_pictures_url
  end
  
  def edit
     @pic = Picture.find_by_id(params[:id])
  end
  
  def change
    p = Picture.find_by_id(params[:id])
    p.url = params[:url]
    p.title = params[:title]
    p.save
    redirect_to one_picture_url(p.id)
  end
    
  def show
    @pic = Picture.find_by_id(params[:id])
  end
  
  def index
    @pics = Picture.all
  end
  
  def remove
    p = Picture.find_by_id(params[:id])
    p.destroy
    redirect_to all_pictures_url
  end

end
  
  
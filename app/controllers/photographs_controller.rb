class PhotographsController < ApplicationController
  
  def new
  end
  
  def show
    @pic = Picture.find_by_id(params[:id])
  end
  
  def index
    @pics = Picture.all
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    
    redirect_to 'http://localhost:3000/pictures'
  end
  
  # def photo_data
  #     return [{:url => "http://www.starstay.com/photos/Waterford_ireland.jpg", :title => "Waterford"}, 
  #       {:url => "http://auabroad.american.edu/_customtags/ct_Image.cfm?Image_ID=2520", :title => "Univ. of Limerick"}, 
  #       {:url => "http://www.carhire.ie/images/galway.jpg", :title => "Galway"}]
  #   end
  
  
end
  
  
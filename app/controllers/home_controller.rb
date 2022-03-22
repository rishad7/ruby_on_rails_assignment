class HomeController < ApplicationController
  def index
    if params[:search].blank?
      @tv_series_list = Tvseries.all
    else 
      @tv_series_list = Tvseries.where("actor LIKE?", "%" + params[:search] + "%")
    end
    
    @tv_series = Tv.all
    @search_results = []
  end
end

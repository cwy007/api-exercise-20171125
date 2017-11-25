class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def update_temp                 # NOTE: method 就是一组处理的集合
    city = City.find(params[:id])

    response = RestClient.get "http://v.juhe.cn/weather/index",
                              :params => { :cityname => city.juhe_id, :key => "b73eb66dddf02d2f049c2d84ebea4c05" }
    data = JSON.parse(response.body)

    city.update( :current_temp => data["result"]["sk"]["temp"] )

    redirect_to cities_path
  end
end

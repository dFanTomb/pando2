class PagesController < ApplicationController
  def home
    @airmeasures = Airmeasure.select("timestamps", "measure_type", "measure_float", "room_name")
  end
end

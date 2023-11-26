class PagesController < ApplicationController
  def home
    @airmeasures = Airmeasure.all
  end
end

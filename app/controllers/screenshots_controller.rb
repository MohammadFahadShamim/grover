class ScreenshotsController < ApplicationController
  def show
    if  params[:screenshot_url]
			url  =  ActionController::Base.helpers.sanitize(params[:screenshot_url])
			@image  =  Grover.new(url).to_png
		end
  end
end

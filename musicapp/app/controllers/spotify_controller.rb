class SpotifyController < ApplicationController
  def search
  	title = params[:title]
  	if title != nil
  		@results = RSpotify::Track.search(title)
  	end
  end
end

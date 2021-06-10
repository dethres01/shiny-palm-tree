class SearchController < ApplicationController
  def search
    pattern = params[:s]
    @songs = Song.where("name LIKE ?","%#{pattern}%")
    @playlists = Playlist.where("name LIKE ?","%#{pattern}%")
  end
end
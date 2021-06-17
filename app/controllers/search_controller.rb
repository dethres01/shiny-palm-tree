class SearchController < ApplicationController
  def search
    pattern = params[:s]
    @songs = Song.where("name LIKE ?","%#{pattern}%")
    @playlists = Playlist.where("name LIKE ? and public= ?","%#{pattern}%", true)
  end
end
json.extract! song, :id, :name, :youtube, :created_at, :updated_at
json.url song_url(song, format: :json)

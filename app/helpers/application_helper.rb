module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
        render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields btn btn-success", data: {id: id, fields: fields.gsub("\n", "")})
  end
  def youtube_video(url)
    id = YouTubeAddy.extract_video_id(url) #id
    #<- watch?v= id 
    render partial: 'songs/video', locals: { url: id }
  end
  def page_exception()
    if (current_page?(edit_user_registration_path) ||
        current_page?(new_playlist_path))
      return true
    end
  end
end

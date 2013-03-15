get '/tags/:name' do
  @tag = Tag.find_by_name(params[:name])
  @posts = Tag.find_by_name(params[:name]).posts

  erb :tag_page
end
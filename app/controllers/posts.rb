get '/posts/new' do

  erb :create_post
end

post '/posts/new' do
  @newpost = Post.create(title: params[:title],
                        body: params[:body])

  # Using ID hack (TODO: DRY up duplicate handling)

  all_tags = []
  formatted_tags = params[:tags].split(", ")
  formatted_tags.each do |tag|
    all_tags << Tag.create(name: tag)
  end

  @newpost.tags = all_tags

  redirect '/'
end

get '/posts/:post_id' do
  @post = Post.find(params[:post_id])
  erb :single_post
end

post '/posts/:post_id/update' do
  Post.update(params[:post_id], params[:update])
  all_tags = []
  formatted_tags = params[:tag].values.join.split(", ")
  formatted_tags.each do |tag|
    all_tags << Tag.create(name: tag)
  end

  @updatedpost = Post.find(params[:post_id])
  @updatedpost.tags = all_tags

  redirect '/'
end

get '/posts/:post_id/edit' do 
  @post = Post.find(params[:post_id])

  @tags = []
  Post.find(params[:post_id]).tags.each do |tag|
    @tags << tag.name
  end 
  @tags = @tags.join(", ")

  erb :edit_post
end

post '/posts/:post_id/delete' do
  Post.find(params[:post_id]).destroy
  redirect '/'
end

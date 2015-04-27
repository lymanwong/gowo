get '/comments/new' do
  erb :new
end

get '/comments/:id' do
  @user = User.find(session[:user_id])
  @workout = comment.find(params[:id])
  erb :show
end

post '/comments/new' do
  comment.create(params[:comment])
  redirect to '/' , :layout => false
end

delete '/comments/:id' do
  @comment = comment.find(params[:id])
  @comment.destroy
  redirect to '/'
end

get '/comments/:id/edit' do
  @comment = comment.find(params[:id])
  erb :edit
end

put '/comments/:id' do
  @comment = comment.find(params[:id])
  @comment.update(params[:comment])
  redirect to "/comments/#{@comment.id}"
end

after do
  ActiveRecord::Base.connection.close
end

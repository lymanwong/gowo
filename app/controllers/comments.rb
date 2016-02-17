get '/comments/new' do
  erb :newcomment
end

get '/comments/:id' do
  @user = User.find(session[:user_id])
  @workout = Comment.find(params[:id])
  erb :show
end

post '/comments/new' do
  Comment.create(params[:newcomment])
  redirect to '/workouts/#{@workout}/#{@comment.id}' , :layout => false
end

delete '/comments/:id' do
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect to '/'
end

get '/comments/:id/edit' do
  @comment = Comment.find(params[:id])
  erb :edit
end

put '/comments/:id' do
  @comment = Comment.find(params[:id])
  @comment.update(params[:comment])
  redirect to "/workouts/#{@workout}/#{@comment.id}"
end

after do
  ActiveRecord::Base.connection.close
end

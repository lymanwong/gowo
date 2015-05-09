require 'sinatra'

get '/' do
  redirect '/login' unless session[:user_id]
  @user = User.find(session[:user_id])
  @workouts = Workout.all.paginate(:page => params[:page], :per_page => 15)
  erb :index
end

get '/workouts/new' do
  erb :new
end

get '/about' do
  erb :about
end

get '/workouts/:id' do
  @user = User.find(session[:user_id])
  @workout = Workout.find(params[:id])
  @mycomments = @workout.comments
  erb :show
end

post '/workouts/new' do
  Workout.create(params[:workout])
  redirect to '/' , :layout => false
end

delete '/workouts/:id' do
  @workout = Workout.find(params[:id])
  @workout.destroy
  redirect to '/'
end

get '/workouts/:id/edit' do
  @workout = Workout.find(params[:id])
  erb :edit
end

put '/workouts/:id' do
  @workout = Workout.find(params[:id])
  @workout.update(params[:workout])
  redirect to "/workouts/#{@workout.id}"
end

after do
  ActiveRecord::Base.connection.close
end

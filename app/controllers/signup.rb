require 'sinatra'

get '/signup' do
  erb :signup
end

post '/signup' do
  @user = User.new(username: params[:username], email: params[:email], password: params[:password])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb '/signup'
  end
end

after do
  ActiveRecord::Base.connection.close
end

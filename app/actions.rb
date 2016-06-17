helpers do 

  def current_user 
    User.find(session[:user_id]) if session[:user_id]
  end

end 

# Homepage (Root path)
get '/' do
  erb :index
end






#-------for event posting----------#

#needs fixing, make sure schema column names match


get '/events' do
	
	@events = Event.all  #Active record object being transferred into a variable.
	erb :'events/index'
end

get '/events/new' do
  erb :'/events/new'
end

post '/events' do  #accepting the form data and updating the messages table in db
	@event = Event.new(
		title: params[:title], #params title comes from form. title on left is DB
		address: params[:address],
		capacity: params[:capacity],
		description: params[:description],
		price: params[:price],
		event_date: params[:event_date],
		image_file: params[:image_file]
	)
	if @events.save
		redirect '/events'
	else
		erb :'events/new'
	end
end


#-------login and registration----------#

before do
  @current_user = User.find(session[:user_id]) if session[:user_id]
  cookies[:page_views] ? cookies[:page_views] = cookies[:page_views].to_i + 1 : cookies[:page_views] = 1
end


get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by(email: params[:email])
  if user && user.password_hash == params[:password_hash]  
    session[:user_id] = user.id
    redirect '/'
  else
    erb :signup
  end
end


get '/signup' do
  if current_user
    redirect '/'
  else
    erb :signup
  end
end

post '/signup' do
  user = User.new(params)
  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    @errors = user.errors
    erb :signup
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
















